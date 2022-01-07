; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_default_inquire_auth_client.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_message.c_RPCRT4_default_inquire_auth_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32 }

@RPC_S_BINDING_HAS_NO_AUTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"privs not implemented\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"authorization service not implemented\0A\00", align 1
@RPC_C_AUTHZ_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"flags 0x%x not implemented\0A\00", align 1
@RPC_S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RPCRT4_default_inquire_auth_client(%struct.TYPE_5__* %0, i32** %1, i32* %2, i64* %3, i64* %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* @RPC_S_BINDING_HAS_NO_AUTH, align 4
  store i32 %21, i32* %8, align 4
  br label %80

22:                                               ; preds = %7
  %23 = load i32**, i32*** %10, align 8
  %24 = icmp ne i32** %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32**, i32*** %10, align 8
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @RPCRT4_strdupW(i32 %36)
  %38 = load i32*, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %43, i32* %8, align 4
  br label %80

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i64*, i64** %12, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %12, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i64*, i64** %13, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %13, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i64*, i64** %14, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i64, i64* @RPC_C_AUTHZ_NONE, align 8
  %71 = load i64*, i64** %14, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i64, i64* %15, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i64, i64* %15, align 8
  %77 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* @RPC_S_OK, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %42, %20
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @RPCRT4_strdupW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
