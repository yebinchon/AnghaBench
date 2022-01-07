; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_test_decode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_test_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, i32* }

@__const.test_decode.hexdigit = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@.str = private unnamed_addr constant [3 x i8] c"x'\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_12__**)* @test_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_decode(i32* %0, i32 %1, %struct.TYPE_12__** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca [16 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [3 x i8], align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %6, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @sqlite3_context_db_handle(i32* %22)
  store i32* %23, i32** %7, align 8
  %24 = call i32* (...) @Tcl_NewObj()
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i32 @Tcl_IncrRefCount(i32* %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %31, i64 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = call i64 @sqlite3_value_blob(%struct.TYPE_12__* %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @sqlite3GetVarint(i32* %37, i64* %12)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %9, align 8
  store i32* %43, i32** %11, align 8
  br label %44

44:                                               ; preds = %136, %3
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ult i32* %45, %46
  br i1 %47, label %48, label %137

48:                                               ; preds = %44
  store i32* null, i32** %14, align 8
  %49 = call i32 @memset(%struct.TYPE_12__* %16, i32 0, i32 32)
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  store i32* %50, i32** %51, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @ENC(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @sqlite3GetVarint(i32* %55, i64* %15)
  %57 = load i32*, i32** %10, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %10, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i64, i64* %15, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @sqlite3VdbeSerialGet(i32* %60, i32 %62, %struct.TYPE_12__* %16)
  %64 = load i32*, i32** %11, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %11, align 8
  %67 = call i32 @sqlite3_value_type(%struct.TYPE_12__* %16)
  switch i32 %67, label %122 [
    i32 128, label %68
    i32 132, label %72
    i32 131, label %114
    i32 130, label %117
    i32 129, label %120
  ]

68:                                               ; preds = %48
  %69 = call i64 @sqlite3_value_text(%struct.TYPE_12__* %16)
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32* @Tcl_NewStringObj(i8* %70, i32 -1)
  store i32* %71, i32** %14, align 8
  br label %124

72:                                               ; preds = %48
  %73 = bitcast [16 x i8]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %73, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_decode.hexdigit, i32 0, i32 0), i64 16, i1 false)
  %74 = call i32 @sqlite3_value_bytes(%struct.TYPE_12__* %16)
  store i32 %74, i32* %18, align 4
  %75 = call i64 @sqlite3_value_blob(%struct.TYPE_12__* %16)
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %19, align 8
  %77 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %77, i32** %14, align 8
  store i32 0, i32* %20, align 4
  br label %78

78:                                               ; preds = %108, %72
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %18, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %78
  %83 = load i32*, i32** %19, align 8
  %84 = load i32, i32* %20, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 4
  %89 = and i32 %88, 15
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 0
  store i8 %92, i8* %93, align 1
  %94 = load i32*, i32** %19, align 8
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 15
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 1
  store i8 %102, i8* %103, align 1
  %104 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 2
  store i8 0, i8* %104, align 1
  %105 = load i32*, i32** %14, align 8
  %106 = getelementptr inbounds [3 x i8], [3 x i8]* %21, i64 0, i64 0
  %107 = call i32 @Tcl_AppendStringsToObj(i32* %105, i8* %106, i32 0)
  br label %108

108:                                              ; preds = %82
  %109 = load i32, i32* %20, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %20, align 4
  br label %78

111:                                              ; preds = %78
  %112 = load i32*, i32** %14, align 8
  %113 = call i32 @Tcl_AppendStringsToObj(i32* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %124

114:                                              ; preds = %48
  %115 = call i32 @sqlite3_value_double(%struct.TYPE_12__* %16)
  %116 = call i32* @Tcl_NewDoubleObj(i32 %115)
  store i32* %116, i32** %14, align 8
  br label %124

117:                                              ; preds = %48
  %118 = call i32 @sqlite3_value_int64(%struct.TYPE_12__* %16)
  %119 = call i32* @Tcl_NewWideIntObj(i32 %118)
  store i32* %119, i32** %14, align 8
  br label %124

120:                                              ; preds = %48
  %121 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  store i32* %121, i32** %14, align 8
  br label %124

122:                                              ; preds = %48
  %123 = call i32 @assert(i32 0)
  br label %124

124:                                              ; preds = %122, %120, %117, %114, %111, %68
  %125 = load i32*, i32** %13, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = call i32 @Tcl_ListObjAppendElement(i32 0, i32* %125, i32* %126)
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @sqlite3DbFree(i32* %132, i32 %134)
  br label %136

136:                                              ; preds = %131, %124
  br label %44

137:                                              ; preds = %44
  %138 = load i32*, i32** %4, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = call i32 @Tcl_GetString(i32* %139)
  %141 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %142 = call i32 @sqlite3_result_text(i32* %138, i32 %140, i32 -1, i32 %141)
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @Tcl_DecrRefCount(i32* %143)
  ret void
}

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32* @Tcl_NewObj(...) #1

declare dso_local i32 @Tcl_IncrRefCount(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_blob(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3GetVarint(i32*, i64*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ENC(i32*) #1

declare dso_local i32 @sqlite3VdbeSerialGet(i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3_value_type(%struct.TYPE_12__*) #1

declare dso_local i32* @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i64 @sqlite3_value_text(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sqlite3_value_bytes(%struct.TYPE_12__*) #1

declare dso_local i32 @Tcl_AppendStringsToObj(i32*, i8*, i32) #1

declare dso_local i32* @Tcl_NewDoubleObj(i32) #1

declare dso_local i32 @sqlite3_value_double(%struct.TYPE_12__*) #1

declare dso_local i32* @Tcl_NewWideIntObj(i32) #1

declare dso_local i32 @sqlite3_value_int64(%struct.TYPE_12__*) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32, i32*, i32*) #1

declare dso_local i32 @sqlite3DbFree(i32*, i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32) #1

declare dso_local i32 @Tcl_GetString(i32*) #1

declare dso_local i32 @Tcl_DecrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
