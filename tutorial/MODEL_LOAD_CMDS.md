# model load/train/save commands

```jsctl
actions load module jaseci_ai_kit.tfm_ner
jac run tfm_ner.jac -walk train -ctx "{\"train_file\": \"ner_train.json\"}"
jac run tfm_ner.jac -walk save_model -ctx "{\"model_path\": \"tfm_ner_model\"}"
walker run load_model -ctx "{\"model_type\": \"tfm_ner\", \"model_path\": \"tfm_ner_model\"}"
```

```jsctl
actions load module jaseci_ai_kit.bi_enc
jac run bi_enc.jac -walk train -ctx "{\"train_file\": \"clf_train_1.json\"}"
jac run bi_enc.jac -walk save_model -ctx "{\"model_path\": \"dialogue_intent_model\"}"
walker run load_model -ctx "{\"model_type\": \"bi_enc\", \"model_path\": \"dialogue_intent_model\"}"
```
