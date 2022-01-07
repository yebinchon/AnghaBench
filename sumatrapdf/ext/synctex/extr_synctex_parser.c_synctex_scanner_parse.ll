; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c_synctex_scanner_parse.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c_synctex_scanner_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, float, float, double, %struct.TYPE_20__*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@synctex_node_type_sheet = common dso_local global i64 0, align 8
@synctex_class_sheet = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@synctex_node_type_input = common dso_local global i64 0, align 8
@synctex_class_input = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@synctex_node_type_vbox = common dso_local global i64 0, align 8
@synctex_class_vbox = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@synctex_node_type_void_vbox = common dso_local global i64 0, align 8
@synctex_class_void_vbox = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@synctex_node_type_hbox = common dso_local global i64 0, align 8
@synctex_class_hbox = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@synctex_node_type_void_hbox = common dso_local global i64 0, align 8
@synctex_class_void_hbox = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@synctex_node_type_kern = common dso_local global i64 0, align 8
@synctex_class_kern = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@synctex_node_type_glue = common dso_local global i64 0, align 8
@synctex_class_glue = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@synctex_node_type_math = common dso_local global i64 0, align 8
@synctex_class_math = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@synctex_node_type_boundary = common dso_local global i64 0, align 8
@synctex_class_boundary = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@SYNCTEX_BUFFER_SIZE = common dso_local global i32 0, align 4
@SYNCTEX_START = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"SyncTeX: malloc error\00", align 1
@SYNCTEX_END = common dso_local global i8* null, align 8
@SYNCTEX_CUR = common dso_local global i8* null, align 8
@SYNCTEX_STATUS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"SyncTeX Error: Bad preamble\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"SyncTeX Error: Bad content\0A\00", align 1
@SYNCTEX_FILE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @synctex_scanner_parse(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %6 = icmp ne %struct.TYPE_19__* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7, %1
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %2, align 8
  br label %292

15:                                               ; preds = %7
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  store i32 1000, i32* %20, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  store i32 8192, i32* %22, align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 3
  store i32 578, i32* %24, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  store i32 578, i32* %26, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 5
  store float 0x44DFE81BA0000000, float* %28, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 4
  store float 0x44DFE81BA0000000, float* %30, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 7
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = load i64, i64* @synctex_node_type_sheet, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i64 %34
  %36 = bitcast %struct.TYPE_20__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 bitcast (%struct.TYPE_20__* @synctex_class_sheet to i8*), i64 8, i1 false)
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = load i64, i64* @synctex_node_type_input, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i64 %40
  %42 = bitcast %struct.TYPE_20__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 bitcast (%struct.TYPE_20__* @synctex_class_input to i8*), i64 8, i1 false)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 7
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = load i64, i64* @synctex_node_type_input, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %49, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 7
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = load i64, i64* @synctex_node_type_sheet, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %56, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = load i64, i64* @synctex_node_type_vbox, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i64 %60
  %62 = bitcast %struct.TYPE_20__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 bitcast (%struct.TYPE_20__* @synctex_class_vbox to i8*), i64 8, i1 false)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 7
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = load i64, i64* @synctex_node_type_vbox, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %69, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 7
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  %73 = load i64, i64* @synctex_node_type_void_vbox, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i64 %73
  %75 = bitcast %struct.TYPE_20__* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 bitcast (%struct.TYPE_20__* @synctex_class_void_vbox to i8*), i64 8, i1 false)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 7
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %78, align 8
  %80 = load i64, i64* @synctex_node_type_void_vbox, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  store %struct.TYPE_19__* %76, %struct.TYPE_19__** %82, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 7
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %84, align 8
  %86 = load i64, i64* @synctex_node_type_hbox, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i64 %86
  %88 = bitcast %struct.TYPE_20__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 bitcast (%struct.TYPE_20__* @synctex_class_hbox to i8*), i64 8, i1 false)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 7
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %91, align 8
  %93 = load i64, i64* @synctex_node_type_hbox, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  store %struct.TYPE_19__* %89, %struct.TYPE_19__** %95, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 7
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  %99 = load i64, i64* @synctex_node_type_void_hbox, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i64 %99
  %101 = bitcast %struct.TYPE_20__* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 bitcast (%struct.TYPE_20__* @synctex_class_void_hbox to i8*), i64 8, i1 false)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 7
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = load i64, i64* @synctex_node_type_void_hbox, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  store %struct.TYPE_19__* %102, %struct.TYPE_19__** %108, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 7
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = load i64, i64* @synctex_node_type_kern, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i64 %112
  %114 = bitcast %struct.TYPE_20__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 bitcast (%struct.TYPE_20__* @synctex_class_kern to i8*), i64 8, i1 false)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 7
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = load i64, i64* @synctex_node_type_kern, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  store %struct.TYPE_19__* %115, %struct.TYPE_19__** %121, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 7
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %123, align 8
  %125 = load i64, i64* @synctex_node_type_glue, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i64 %125
  %127 = bitcast %struct.TYPE_20__* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 bitcast (%struct.TYPE_20__* @synctex_class_glue to i8*), i64 8, i1 false)
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 7
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = load i64, i64* @synctex_node_type_glue, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  store %struct.TYPE_19__* %128, %struct.TYPE_19__** %134, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 7
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %136, align 8
  %138 = load i64, i64* @synctex_node_type_math, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i64 %138
  %140 = bitcast %struct.TYPE_20__* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 bitcast (%struct.TYPE_20__* @synctex_class_math to i8*), i64 8, i1 false)
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 7
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %143, align 8
  %145 = load i64, i64* @synctex_node_type_math, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  store %struct.TYPE_19__* %141, %struct.TYPE_19__** %147, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 7
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = load i64, i64* @synctex_node_type_boundary, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i64 %151
  %153 = bitcast %struct.TYPE_20__* %152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %153, i8* align 8 bitcast (%struct.TYPE_20__* @synctex_class_boundary to i8*), i64 8, i1 false)
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 7
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %156, align 8
  %158 = load i64, i64* @synctex_node_type_boundary, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  store %struct.TYPE_19__* %154, %struct.TYPE_19__** %160, align 8
  %161 = load i32, i32* @SYNCTEX_BUFFER_SIZE, align 4
  %162 = add nsw i32 %161, 1
  %163 = call i64 @malloc(i32 %162)
  %164 = inttoptr i64 %163 to i8*
  store i8* %164, i8** @SYNCTEX_START, align 8
  %165 = load i8*, i8** @SYNCTEX_START, align 8
  %166 = icmp eq i8* null, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %15
  %168 = call i32 @_synctex_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %170 = call i32 @synctex_scanner_free(%struct.TYPE_19__* %169)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %2, align 8
  br label %292

171:                                              ; preds = %15
  %172 = load i8*, i8** @SYNCTEX_START, align 8
  %173 = load i32, i32* @SYNCTEX_BUFFER_SIZE, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  store i8* %175, i8** @SYNCTEX_END, align 8
  %176 = load i8*, i8** @SYNCTEX_END, align 8
  store i8 0, i8* %176, align 1
  %177 = load i8*, i8** @SYNCTEX_END, align 8
  store i8* %177, i8** @SYNCTEX_CUR, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %179 = call i64 @_synctex_scan_preamble(%struct.TYPE_19__* %178)
  store i64 %179, i64* %4, align 8
  %180 = load i64, i64* %4, align 8
  %181 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %171
  %184 = call i32 @_synctex_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %185

185:                                              ; preds = %194, %183
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %187 = call i32 @synctex_scanner_free(%struct.TYPE_19__* %186)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %2, align 8
  br label %292

188:                                              ; preds = %171
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %190 = call i64 @_synctex_scan_content(%struct.TYPE_19__* %189)
  store i64 %190, i64* %4, align 8
  %191 = load i64, i64* %4, align 8
  %192 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %193 = icmp slt i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = call i32 @_synctex_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %185

196:                                              ; preds = %188
  %197 = load i8*, i8** @SYNCTEX_START, align 8
  %198 = call i32 @free(i8* %197)
  store i8* null, i8** @SYNCTEX_END, align 8
  store i8* null, i8** @SYNCTEX_CUR, align 8
  store i8* null, i8** @SYNCTEX_START, align 8
  %199 = load i32*, i32** @SYNCTEX_FILE, align 8
  %200 = call i32 @gzclose(i32* %199)
  store i32* null, i32** @SYNCTEX_FILE, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp sle i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %196
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 1
  store i32 8192, i32* %207, align 4
  br label %208

208:                                              ; preds = %205, %196
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp sle i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  store i32 1000, i32* %215, align 8
  br label %216

216:                                              ; preds = %213, %208
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 6
  %219 = load double, double* %218, align 8
  %220 = fcmp ole double %219, 0.000000e+00
  br i1 %220, label %221, label %229

221:                                              ; preds = %216
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sitofp i32 %224 to double
  %226 = fdiv double %225, 0x40F00F5C28F5C28F
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 6
  store double %226, double* %228, align 8
  br label %239

229:                                              ; preds = %216
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = sitofp i32 %232 to double
  %234 = fdiv double %233, 0x40F00F5C28F5C28F
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 6
  %237 = load double, double* %236, align 8
  %238 = fmul double %237, %234
  store double %238, double* %236, align 8
  br label %239

239:                                              ; preds = %229, %221
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sitofp i32 %242 to double
  %244 = fdiv double %243, 1.000000e+03
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 6
  %247 = load double, double* %246, align 8
  %248 = fmul double %247, %244
  store double %248, double* %246, align 8
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 4
  %251 = load float, float* %250, align 8
  %252 = fpext float %251 to double
  %253 = fcmp ogt double %252, 6.000000e+23
  br i1 %253, label %254, label %281

254:                                              ; preds = %239
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = sitofp i32 %257 to double
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = sitofp i32 %261 to double
  %263 = fdiv double %262, 0x40F00F5C28F5C28F
  %264 = fmul double %258, %263
  %265 = fptrunc double %264 to float
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 4
  store float %265, float* %267, align 8
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = sitofp i32 %270 to double
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = sitofp i32 %274 to double
  %276 = fdiv double %275, 0x40F00F5C28F5C28F
  %277 = fmul double %271, %276
  %278 = fptrunc double %277 to float
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 5
  store float %278, float* %280, align 4
  br label %290

281:                                              ; preds = %239
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 4
  %284 = load float, float* %283, align 8
  %285 = fdiv float %284, 0x40F00F5C20000000
  store float %285, float* %283, align 8
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 5
  %288 = load float, float* %287, align 4
  %289 = fdiv float %288, 0x40F00F5C20000000
  store float %289, float* %287, align 4
  br label %290

290:                                              ; preds = %281, %254
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %291, %struct.TYPE_19__** %2, align 8
  br label %292

292:                                              ; preds = %290, %185, %167, %13
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  ret %struct.TYPE_19__* %293
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @_synctex_error(i8*) #2

declare dso_local i32 @synctex_scanner_free(%struct.TYPE_19__*) #2

declare dso_local i64 @_synctex_scan_preamble(%struct.TYPE_19__*) #2

declare dso_local i64 @_synctex_scan_content(%struct.TYPE_19__*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @gzclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
