; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPC2NCA_STATUS.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPC2NCA_STATUS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NCA_S_FAULT_CONTEXT_MISMATCH = common dso_local global i32 0, align 4
@NCA_S_FAULT_REMOTE_NO_MEMORY = common dso_local global i32 0, align 4
@NCA_S_SERVER_TOO_BUSY = common dso_local global i32 0, align 4
@NCA_S_UNK_IF = common dso_local global i32 0, align 4
@NCA_S_FAULT_UNSPEC = common dso_local global i32 0, align 4
@NCA_S_MANAGER_NOT_ENTERED = common dso_local global i32 0, align 4
@NCA_S_PROTO_ERROR = common dso_local global i32 0, align 4
@NCA_S_UNSUPPORTED_TYPE = common dso_local global i32 0, align 4
@NCA_S_FAULT_INVALID_TAG = common dso_local global i32 0, align 4
@NCA_S_FAULT_INVALID_BOUND = common dso_local global i32 0, align 4
@NCA_S_OP_RNG_ERROR = common dso_local global i32 0, align 4
@NCA_S_FAULT_CANCEL = common dso_local global i32 0, align 4
@NCA_S_COMM_FAILURE = common dso_local global i32 0, align 4
@NCA_S_FAULT_PIPE_ORDER = common dso_local global i32 0, align 4
@NCA_S_FAULT_PIPE_CLOSED = common dso_local global i32 0, align 4
@NCA_S_FAULT_PIPE_DISCIPLINE = common dso_local global i32 0, align 4
@NCA_S_FAULT_PIPE_EMPTY = common dso_local global i32 0, align 4
@NCA_S_FAULT_FP_DIV_ZERO = common dso_local global i32 0, align 4
@NCA_S_FAULT_FP_ERROR = common dso_local global i32 0, align 4
@NCA_S_FAULT_FP_OVERFLOW = common dso_local global i32 0, align 4
@NCA_S_FAULT_FP_UNDERFLOW = common dso_local global i32 0, align 4
@NCA_S_FAULT_INT_DIV_BY_ZERO = common dso_local global i32 0, align 4
@NCA_S_FAULT_INT_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RPC2NCA_STATUS(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %55 [
    i32 152, label %5
    i32 151, label %7
    i32 144, label %9
    i32 140, label %11
    i32 141, label %13
    i32 149, label %15
    i32 148, label %17
    i32 142, label %19
    i32 139, label %21
    i32 145, label %23
    i32 146, label %25
    i32 143, label %27
    i32 135, label %29
    i32 150, label %31
    i32 147, label %33
    i32 134, label %35
    i32 138, label %37
    i32 137, label %39
    i32 136, label %41
    i32 133, label %43
    i32 132, label %45
    i32 131, label %47
    i32 130, label %49
    i32 129, label %51
    i32 128, label %53
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @NCA_S_FAULT_CONTEXT_MISMATCH, align 4
  store i32 %6, i32* %2, align 4
  br label %57

7:                                                ; preds = %1
  %8 = load i32, i32* @NCA_S_FAULT_REMOTE_NO_MEMORY, align 4
  store i32 %8, i32* %2, align 4
  br label %57

9:                                                ; preds = %1
  %10 = load i32, i32* @NCA_S_SERVER_TOO_BUSY, align 4
  store i32 %10, i32* %2, align 4
  br label %57

11:                                               ; preds = %1
  %12 = load i32, i32* @NCA_S_UNK_IF, align 4
  store i32 %12, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load i32, i32* @NCA_S_SERVER_TOO_BUSY, align 4
  store i32 %14, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = load i32, i32* @NCA_S_FAULT_UNSPEC, align 4
  store i32 %16, i32* %2, align 4
  br label %57

17:                                               ; preds = %1
  %18 = load i32, i32* @NCA_S_MANAGER_NOT_ENTERED, align 4
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %1
  %20 = load i32, i32* @NCA_S_PROTO_ERROR, align 4
  store i32 %20, i32* %2, align 4
  br label %57

21:                                               ; preds = %1
  %22 = load i32, i32* @NCA_S_UNSUPPORTED_TYPE, align 4
  store i32 %22, i32* %2, align 4
  br label %57

23:                                               ; preds = %1
  %24 = load i32, i32* @NCA_S_FAULT_INVALID_TAG, align 4
  store i32 %24, i32* %2, align 4
  br label %57

25:                                               ; preds = %1
  %26 = load i32, i32* @NCA_S_FAULT_INVALID_BOUND, align 4
  store i32 %26, i32* %2, align 4
  br label %57

27:                                               ; preds = %1
  %28 = load i32, i32* @NCA_S_OP_RNG_ERROR, align 4
  store i32 %28, i32* %2, align 4
  br label %57

29:                                               ; preds = %1
  %30 = load i32, i32* @NCA_S_FAULT_CONTEXT_MISMATCH, align 4
  store i32 %30, i32* %2, align 4
  br label %57

31:                                               ; preds = %1
  %32 = load i32, i32* @NCA_S_FAULT_CANCEL, align 4
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %1
  %34 = load i32, i32* @NCA_S_COMM_FAILURE, align 4
  store i32 %34, i32* %2, align 4
  br label %57

35:                                               ; preds = %1
  %36 = load i32, i32* @NCA_S_FAULT_PIPE_ORDER, align 4
  store i32 %36, i32* %2, align 4
  br label %57

37:                                               ; preds = %1
  %38 = load i32, i32* @NCA_S_FAULT_PIPE_CLOSED, align 4
  store i32 %38, i32* %2, align 4
  br label %57

39:                                               ; preds = %1
  %40 = load i32, i32* @NCA_S_FAULT_PIPE_DISCIPLINE, align 4
  store i32 %40, i32* %2, align 4
  br label %57

41:                                               ; preds = %1
  %42 = load i32, i32* @NCA_S_FAULT_PIPE_EMPTY, align 4
  store i32 %42, i32* %2, align 4
  br label %57

43:                                               ; preds = %1
  %44 = load i32, i32* @NCA_S_FAULT_FP_DIV_ZERO, align 4
  store i32 %44, i32* %2, align 4
  br label %57

45:                                               ; preds = %1
  %46 = load i32, i32* @NCA_S_FAULT_FP_ERROR, align 4
  store i32 %46, i32* %2, align 4
  br label %57

47:                                               ; preds = %1
  %48 = load i32, i32* @NCA_S_FAULT_FP_OVERFLOW, align 4
  store i32 %48, i32* %2, align 4
  br label %57

49:                                               ; preds = %1
  %50 = load i32, i32* @NCA_S_FAULT_FP_UNDERFLOW, align 4
  store i32 %50, i32* %2, align 4
  br label %57

51:                                               ; preds = %1
  %52 = load i32, i32* @NCA_S_FAULT_INT_DIV_BY_ZERO, align 4
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %1
  %54 = load i32, i32* @NCA_S_FAULT_INT_OVERFLOW, align 4
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %1
  %56 = load i32, i32* %3, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
