; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_NCA2RPC_STATUS.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_NCA2RPC_STATUS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPC_S_COMM_FAILURE = common dso_local global i32 0, align 4
@RPC_S_PROCNUM_OUT_OF_RANGE = common dso_local global i32 0, align 4
@RPC_S_UNKNOWN_IF = common dso_local global i32 0, align 4
@RPC_S_CALL_FAILED = common dso_local global i32 0, align 4
@RPC_S_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_SERVER_MEMORY = common dso_local global i32 0, align 4
@RPC_S_SERVER_TOO_BUSY = common dso_local global i32 0, align 4
@RPC_S_UNSUPPORTED_TYPE = common dso_local global i32 0, align 4
@RPC_S_ZERO_DIVIDE = common dso_local global i32 0, align 4
@RPC_S_ADDRESS_ERROR = common dso_local global i32 0, align 4
@RPC_S_FP_DIV_ZERO = common dso_local global i32 0, align 4
@RPC_S_FP_UNDERFLOW = common dso_local global i32 0, align 4
@RPC_S_FP_OVERFLOW = common dso_local global i32 0, align 4
@RPC_S_INVALID_TAG = common dso_local global i32 0, align 4
@RPC_S_INVALID_BOUND = common dso_local global i32 0, align 4
@RPC_S_CALL_FAILED_DNE = common dso_local global i32 0, align 4
@RPC_S_CALL_CANCELLED = common dso_local global i32 0, align 4
@RPC_X_PIPE_EMPTY = common dso_local global i32 0, align 4
@RPC_X_PIPE_CLOSED = common dso_local global i32 0, align 4
@RPC_X_WRONG_PIPE_ORDER = common dso_local global i32 0, align 4
@RPC_X_PIPE_DISCIPLINE_ERROR = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @NCA2RPC_STATUS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCA2RPC_STATUS(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %71 [
    i32 159, label %5
    i32 137, label %7
    i32 132, label %9
    i32 128, label %11
    i32 135, label %13
    i32 136, label %15
    i32 133, label %17
    i32 130, label %19
    i32 150, label %21
    i32 158, label %23
    i32 155, label %25
    i32 152, label %27
    i32 153, label %29
    i32 147, label %31
    i32 148, label %33
    i32 134, label %35
    i32 131, label %37
    i32 160, label %39
    i32 129, label %41
    i32 138, label %43
    i32 157, label %45
    i32 151, label %47
    i32 154, label %49
    i32 149, label %51
    i32 139, label %53
    i32 143, label %55
    i32 146, label %57
    i32 141, label %59
    i32 144, label %61
    i32 145, label %63
    i32 142, label %65
    i32 156, label %67
    i32 140, label %69
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @RPC_S_COMM_FAILURE, align 4
  store i32 %6, i32* %2, align 4
  br label %73

7:                                                ; preds = %1
  %8 = load i32, i32* @RPC_S_PROCNUM_OUT_OF_RANGE, align 4
  store i32 %8, i32* %2, align 4
  br label %73

9:                                                ; preds = %1
  %10 = load i32, i32* @RPC_S_UNKNOWN_IF, align 4
  store i32 %10, i32* %2, align 4
  br label %73

11:                                               ; preds = %1
  %12 = load i32, i32* @RPC_S_CALL_FAILED, align 4
  store i32 %12, i32* %2, align 4
  br label %73

13:                                               ; preds = %1
  %14 = load i32, i32* @RPC_S_PROTOCOL_ERROR, align 4
  store i32 %14, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load i32, i32* @ERROR_NOT_ENOUGH_SERVER_MEMORY, align 4
  store i32 %16, i32* %2, align 4
  br label %73

17:                                               ; preds = %1
  %18 = load i32, i32* @RPC_S_SERVER_TOO_BUSY, align 4
  store i32 %18, i32* %2, align 4
  br label %73

19:                                               ; preds = %1
  %20 = load i32, i32* @RPC_S_UNSUPPORTED_TYPE, align 4
  store i32 %20, i32* %2, align 4
  br label %73

21:                                               ; preds = %1
  %22 = load i32, i32* @RPC_S_ZERO_DIVIDE, align 4
  store i32 %22, i32* %2, align 4
  br label %73

23:                                               ; preds = %1
  %24 = load i32, i32* @RPC_S_ADDRESS_ERROR, align 4
  store i32 %24, i32* %2, align 4
  br label %73

25:                                               ; preds = %1
  %26 = load i32, i32* @RPC_S_FP_DIV_ZERO, align 4
  store i32 %26, i32* %2, align 4
  br label %73

27:                                               ; preds = %1
  %28 = load i32, i32* @RPC_S_FP_UNDERFLOW, align 4
  store i32 %28, i32* %2, align 4
  br label %73

29:                                               ; preds = %1
  %30 = load i32, i32* @RPC_S_FP_OVERFLOW, align 4
  store i32 %30, i32* %2, align 4
  br label %73

31:                                               ; preds = %1
  %32 = load i32, i32* @RPC_S_INVALID_TAG, align 4
  store i32 %32, i32* %2, align 4
  br label %73

33:                                               ; preds = %1
  %34 = load i32, i32* @RPC_S_INVALID_BOUND, align 4
  store i32 %34, i32* %2, align 4
  br label %73

35:                                               ; preds = %1
  %36 = load i32, i32* @RPC_S_PROTOCOL_ERROR, align 4
  store i32 %36, i32* %2, align 4
  br label %73

37:                                               ; preds = %1
  %38 = load i32, i32* @RPC_S_CALL_FAILED_DNE, align 4
  store i32 %38, i32* %2, align 4
  br label %73

39:                                               ; preds = %1
  %40 = load i32, i32* @RPC_S_CALL_FAILED_DNE, align 4
  store i32 %40, i32* %2, align 4
  br label %73

41:                                               ; preds = %1
  %42 = load i32, i32* @RPC_S_CALL_FAILED, align 4
  store i32 %42, i32* %2, align 4
  br label %73

43:                                               ; preds = %1
  %44 = load i32, i32* @RPC_S_CALL_FAILED_DNE, align 4
  store i32 %44, i32* %2, align 4
  br label %73

45:                                               ; preds = %1
  %46 = load i32, i32* @RPC_S_CALL_CANCELLED, align 4
  store i32 %46, i32* %2, align 4
  br label %73

47:                                               ; preds = %1
  %48 = load i32, i32* @RPC_S_ADDRESS_ERROR, align 4
  store i32 %48, i32* %2, align 4
  br label %73

49:                                               ; preds = %1
  %50 = load i32, i32* @RPC_S_FP_OVERFLOW, align 4
  store i32 %50, i32* %2, align 4
  br label %73

51:                                               ; preds = %1
  %52 = load i32, i32* @RPC_S_ADDRESS_ERROR, align 4
  store i32 %52, i32* %2, align 4
  br label %73

53:                                               ; preds = %1
  %54 = load i32, i32* @RPC_S_CALL_FAILED, align 4
  store i32 %54, i32* %2, align 4
  br label %73

55:                                               ; preds = %1
  %56 = load i32, i32* @RPC_X_PIPE_EMPTY, align 4
  store i32 %56, i32* %2, align 4
  br label %73

57:                                               ; preds = %1
  %58 = load i32, i32* @RPC_X_PIPE_CLOSED, align 4
  store i32 %58, i32* %2, align 4
  br label %73

59:                                               ; preds = %1
  %60 = load i32, i32* @RPC_X_WRONG_PIPE_ORDER, align 4
  store i32 %60, i32* %2, align 4
  br label %73

61:                                               ; preds = %1
  %62 = load i32, i32* @RPC_X_PIPE_DISCIPLINE_ERROR, align 4
  store i32 %62, i32* %2, align 4
  br label %73

63:                                               ; preds = %1
  %64 = load i32, i32* @RPC_S_COMM_FAILURE, align 4
  store i32 %64, i32* %2, align 4
  br label %73

65:                                               ; preds = %1
  %66 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %66, i32* %2, align 4
  br label %73

67:                                               ; preds = %1
  %68 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  store i32 %68, i32* %2, align 4
  br label %73

69:                                               ; preds = %1
  %70 = load i32, i32* @ERROR_NOT_ENOUGH_SERVER_MEMORY, align 4
  store i32 %70, i32* %2, align 4
  br label %73

71:                                               ; preds = %1
  %72 = load i32, i32* %3, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
