; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_RpcTransport_ParseTopOfTower.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_RpcTransport_ParseTopOfTower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection_ops = type { i64*, i64 (i8*, i64, i8**, i8**)*, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@EPT_S_NOT_REGISTERED = common dso_local global i64 0, align 8
@conn_protseq_list = common dso_local global %struct.connection_ops* null, align 8
@RPC_S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RpcTransport_ParseTopOfTower(i8* %0, i64 %1, i8** %2, i8** %3, i8** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca %struct.connection_ops*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store %struct.connection_ops* null, %struct.connection_ops** %14, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %17, 24
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i64, i64* @EPT_S_NOT_REGISTERED, align 8
  store i64 %20, i64* %6, align 8
  br label %141

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %12, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 24
  store i8* %25, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 24
  store i64 %27, i64* %8, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 8
  br i1 %32, label %39, label %33

33:                                               ; preds = %21
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33, %21
  %40 = load i64, i64* @EPT_S_NOT_REGISTERED, align 8
  store i64 %40, i64* %6, align 8
  br label %141

41:                                               ; preds = %33
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %7, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %8, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %53, %struct.TYPE_2__** %13, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ult i64 %54, 24
  br i1 %55, label %62, label %56

56:                                               ; preds = %41
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 8
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %41
  %63 = load i64, i64* @EPT_S_NOT_REGISTERED, align 8
  store i64 %63, i64* %6, align 8
  br label %141

64:                                               ; preds = %56
  store i32 0, i32* %16, align 4
  br label %65

65:                                               ; preds = %102, %64
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.connection_ops*, %struct.connection_ops** @conn_protseq_list, align 8
  %68 = call i32 @ARRAY_SIZE(%struct.connection_ops* %67)
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %70, label %105

70:                                               ; preds = %65
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.connection_ops*, %struct.connection_ops** @conn_protseq_list, align 8
  %75 = load i32, i32* %16, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.connection_ops, %struct.connection_ops* %74, i64 %76
  %78 = getelementptr inbounds %struct.connection_ops, %struct.connection_ops* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %73, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %70
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.connection_ops*, %struct.connection_ops** @conn_protseq_list, align 8
  %88 = load i32, i32* %16, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.connection_ops, %struct.connection_ops* %87, i64 %89
  %91 = getelementptr inbounds %struct.connection_ops, %struct.connection_ops* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %86, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %83
  %97 = load %struct.connection_ops*, %struct.connection_ops** @conn_protseq_list, align 8
  %98 = load i32, i32* %16, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.connection_ops, %struct.connection_ops* %97, i64 %99
  store %struct.connection_ops* %100, %struct.connection_ops** %14, align 8
  br label %105

101:                                              ; preds = %83, %70
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %16, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %65

105:                                              ; preds = %96, %65
  %106 = load %struct.connection_ops*, %struct.connection_ops** %14, align 8
  %107 = icmp ne %struct.connection_ops* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* @EPT_S_NOT_REGISTERED, align 8
  store i64 %109, i64* %6, align 8
  br label %141

110:                                              ; preds = %105
  %111 = load %struct.connection_ops*, %struct.connection_ops** %14, align 8
  %112 = getelementptr inbounds %struct.connection_ops, %struct.connection_ops* %111, i32 0, i32 1
  %113 = load i64 (i8*, i64, i8**, i8**)*, i64 (i8*, i64, i8**, i8**)** %112, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load i8**, i8*** %10, align 8
  %117 = load i8**, i8*** %11, align 8
  %118 = call i64 %113(i8* %114, i64 %115, i8** %116, i8** %117)
  store i64 %118, i64* %15, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* @RPC_S_OK, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %110
  %123 = load i8**, i8*** %9, align 8
  %124 = icmp ne i8** %123, null
  br i1 %124, label %125, label %139

125:                                              ; preds = %122
  %126 = load %struct.connection_ops*, %struct.connection_ops** %14, align 8
  %127 = getelementptr inbounds %struct.connection_ops, %struct.connection_ops* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @strlen(i32 %128)
  %130 = add nsw i64 %129, 1
  %131 = call i8* @I_RpcAllocate(i64 %130)
  %132 = load i8**, i8*** %9, align 8
  store i8* %131, i8** %132, align 8
  %133 = load i8**, i8*** %9, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.connection_ops*, %struct.connection_ops** %14, align 8
  %136 = getelementptr inbounds %struct.connection_ops, %struct.connection_ops* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @strcpy(i8* %134, i32 %137)
  br label %139

139:                                              ; preds = %125, %122, %110
  %140 = load i64, i64* %15, align 8
  store i64 %140, i64* %6, align 8
  br label %141

141:                                              ; preds = %139, %108, %62, %39, %19
  %142 = load i64, i64* %6, align 8
  ret i64 %142
}

declare dso_local i32 @ARRAY_SIZE(%struct.connection_ops*) #1

declare dso_local i8* @I_RpcAllocate(i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
