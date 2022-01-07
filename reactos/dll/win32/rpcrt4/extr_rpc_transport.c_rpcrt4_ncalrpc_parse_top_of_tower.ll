; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_ncalrpc_parse_top_of_tower.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_ncalrpc_parse_top_of_tower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"(%p, %d, %p, %p)\0A\00", align 1
@EPT_S_NOT_REGISTERED = common dso_local global i32 0, align 4
@EPM_PROTOCOL_PIPE = common dso_local global i64 0, align 8
@RPC_S_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@RPC_S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8**, i8**)* @rpcrt4_ncalrpc_parse_top_of_tower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrt4_ncalrpc_parse_top_of_tower(i8* %0, i64 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i8**, i8*** %8, align 8
  %17 = load i8**, i8*** %9, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %15, i8** %16, i8** %17)
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %19, 24
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @EPT_S_NOT_REGISTERED, align 4
  store i32 %22, i32* %5, align 4
  br label %88

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 24
  store i8* %25, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 %26, 24
  store i64 %27, i64* %7, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 8
  br i1 %32, label %55, label %33

33:                                               ; preds = %23
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EPM_PROTOCOL_PIPE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %55, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45, %39, %33, %23
  %56 = load i32, i32* @EPT_S_NOT_REGISTERED, align 4
  store i32 %56, i32* %5, align 4
  br label %88

57:                                               ; preds = %45
  %58 = load i8**, i8*** %8, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i8**, i8*** %8, align 8
  store i8* null, i8** %61, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i8**, i8*** %9, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %86

65:                                               ; preds = %62
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i8* @I_RpcAllocate(i32 %69)
  %71 = load i8**, i8*** %9, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i8**, i8*** %9, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* @RPC_S_OUT_OF_RESOURCES, align 4
  store i32 %76, i32* %5, align 4
  br label %88

77:                                               ; preds = %65
  %78 = load i8**, i8*** %9, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(i8* %79, i8* %80, i32 %84)
  br label %86

86:                                               ; preds = %77, %62
  %87 = load i32, i32* @RPC_S_OK, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %75, %55, %21
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @TRACE(i8*, i8*, i32, i8**, i8**) #1

declare dso_local i8* @I_RpcAllocate(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
