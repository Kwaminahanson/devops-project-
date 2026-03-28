# Runbook Templa


## Runbook: [Procedure Name]

**Version:** 1.0
**Owner:** [Pipeline Pirates]
**Last Updated:** 2026-03-26
**Estimated Duration:** 10 minutes

---

## Purpose
Briefly describe what this runbook does and when it should be used.

## Prerequisites
- [ ] Access to [system/tool]
- [ ] [Role] permissions on [environment]
- [ ] VPN connected (if required)
- [ ] Notify team in #devops-pipeline Slack channel before starting

## Steps

### Step 1: Verify Environment Health
```bash
# Check all containers are running
docker ps

# Check system resources
df -h
free -m
```
**Expected result:** All containers show `Up` status, disk usage below 80%.

### Step 2: [Action Title]
```bash
# Example command
docker compose ps
```
**Expected result:** Describe what success looks like.

### Step 3: [Action Title]
Navigate to [URL/system] and verify [condition].

**Expected result:** Describe what success looks like.

---

## Rollback Procedure
If something goes wrong:

### Step 1: Stop current deployment
```bash
docker compose down
```

### Step 2: Restore previous version
```bash
git revert HEAD
docker compose up --build -d
```

### Step 3: Notify team
Post in #devops-pipeline with:
- What failed
- What was reverted
- Current system status

---

## Escalation
| Issue | Contact | Method |
|---|---|---|
| Infrastructure failure | DevOps On-Call | Slack + Phone |
| App-level issue | Backend Lead | Slack |
| Data issue | Release Manager | Email + Slack |

---

## Post-Incident
- [ ] Update this runbook with lessons learned
- [ ] Create GitHub issue for permanent fix
- [ ] Schedule retrospective if major incident
