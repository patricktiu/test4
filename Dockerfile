# Generated by IBM TransformationAdvisor
# Mon Jun 01 19:17:33 UTC 2020

FROM ibmcom/websphere-traditional:latest-ubi

# put app and scripts and properties in /work/config
# put external library (e.g db driver) in /work/config/lib
COPY --chown=was:root db2app-1war.ear /work/config/db2app-1war.ear
COPY --chown=was:root ./src/config /work/config
COPY --chown=was:root ./lib /work/config/lib
RUN /work/configure.sh
