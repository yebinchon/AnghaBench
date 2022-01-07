; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blob.c_blob_open.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blob.c_blob_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i8**, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, %struct.blob_state* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i64*, i32* }
%struct.blob_state = type { i32, i64* }

@blob_open.blob_argv = internal global [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"cat-file\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%(blob)\00", align 1
@OPEN_PREPARED = common dso_local global i32 0, align 4
@OPEN_REFRESH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@SIZEOF_STR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"rev-parse\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Failed to resolve blob from file name\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"No file chosen, press %s to open tree view\00", align 1
@REQ_VIEW_TREE = common dso_local global i32 0, align 4
@default_encoding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @blob_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blob_open(%struct.view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blob_state*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [4 x i8*], align 16
  %12 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.view*, %struct.view** %4, align 8
  %14 = getelementptr inbounds %struct.view, %struct.view* %13, i32 0, i32 5
  %15 = load %struct.blob_state*, %struct.blob_state** %14, align 8
  store %struct.blob_state* %15, %struct.blob_state** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @OPEN_PREPARED, align 4
  %18 = load i32, i32* @OPEN_REFRESH, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.view*, %struct.view** %4, align 8
  %24 = getelementptr inbounds %struct.view, %struct.view* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i8** [ %25, %22 ], [ getelementptr inbounds ([5 x i8*], [5 x i8*]* @blob_open.blob_argv, i64 0, i64 0), %26 ]
  store i8** %28, i8*** %7, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = icmp ne i8** %29, getelementptr inbounds ([5 x i8*], [5 x i8*]* @blob_open.blob_argv, i64 0, i64 0)
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.view*, %struct.view** %4, align 8
  %33 = getelementptr inbounds %struct.view, %struct.view* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = call i32 @get_path(i64* %36)
  %38 = load %struct.blob_state*, %struct.blob_state** %6, align 8
  %39 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.blob_state*, %struct.blob_state** %6, align 8
  %41 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %31, %27
  %45 = load %struct.blob_state*, %struct.blob_state** %6, align 8
  %46 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %133, label %49

49:                                               ; preds = %44
  %50 = load %struct.view*, %struct.view** %4, align 8
  %51 = getelementptr inbounds %struct.view, %struct.view* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %133, label %58

58:                                               ; preds = %49
  %59 = load %struct.view*, %struct.view** %4, align 8
  %60 = getelementptr inbounds %struct.view, %struct.view* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %133

67:                                               ; preds = %58
  %68 = load %struct.view*, %struct.view** %4, align 8
  %69 = getelementptr inbounds %struct.view, %struct.view* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %67
  %78 = load %struct.view*, %struct.view** %4, align 8
  %79 = getelementptr inbounds %struct.view, %struct.view* %78, i32 0, i32 3
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @string_rev_is_null(i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %77
  %86 = load %struct.view*, %struct.view** %4, align 8
  %87 = getelementptr inbounds %struct.view, %struct.view* %86, i32 0, i32 3
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  br label %92

91:                                               ; preds = %77, %67
  br label %92

92:                                               ; preds = %91, %85
  %93 = phi i8* [ %90, %85 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %91 ]
  store i8* %93, i8** %8, align 8
  %94 = load i32, i32* @SIZEOF_STR, align 4
  %95 = zext i32 %94 to i64
  %96 = call i8* @llvm.stacksave()
  store i8* %96, i8** %9, align 8
  %97 = alloca i8, i64 %95, align 16
  store i64 %95, i64* %10, align 8
  %98 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %98, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %99, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 1
  store i8* %97, i8** %100, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  store i8* null, i8** %101, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load %struct.view*, %struct.view** %4, align 8
  %104 = getelementptr inbounds %struct.view, %struct.view* %103, i32 0, i32 3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = call i32 @string_format(i8* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %102, i64* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %92
  %111 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %112 = load %struct.view*, %struct.view** %4, align 8
  %113 = getelementptr inbounds %struct.view, %struct.view* %112, i32 0, i32 3
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @io_run_buf(i8** %111, i32* %116, i32 8, i32* null, i32 0)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %110, %92
  %120 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  store i32 %120, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

121:                                              ; preds = %110
  %122 = load %struct.blob_state*, %struct.blob_state** %6, align 8
  %123 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 @strlen(i8* %126)
  %128 = call i32 @string_ncopy(i64* %124, i8* %125, i32 %127)
  store i32 0, i32* %12, align 4
  br label %129

129:                                              ; preds = %121, %119
  %130 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %12, align 4
  switch i32 %131, label %196 [
    i32 0, label %132
    i32 1, label %194
  ]

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %132, %58, %49, %44
  %134 = load %struct.blob_state*, %struct.blob_state** %6, align 8
  %135 = getelementptr inbounds %struct.blob_state, %struct.blob_state* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %152, label %138

138:                                              ; preds = %133
  %139 = load %struct.view*, %struct.view** %4, align 8
  %140 = getelementptr inbounds %struct.view, %struct.view* %139, i32 0, i32 3
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %138
  %148 = load %struct.view*, %struct.view** %4, align 8
  %149 = load i32, i32* @REQ_VIEW_TREE, align 4
  %150 = call i32 @get_view_key(%struct.view* %148, i32 %149)
  %151 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %150)
  store i32 %151, i32* %3, align 4
  br label %194

152:                                              ; preds = %138, %133
  %153 = load %struct.view*, %struct.view** %4, align 8
  %154 = getelementptr inbounds %struct.view, %struct.view* %153, i32 0, i32 3
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* @default_encoding, align 4
  %159 = call i32 @get_path_encoding(i64* %157, i32 %158)
  %160 = load %struct.view*, %struct.view** %4, align 8
  %161 = getelementptr inbounds %struct.view, %struct.view* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  %162 = load %struct.view*, %struct.view** %4, align 8
  %163 = getelementptr inbounds %struct.view, %struct.view* %162, i32 0, i32 3
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %152
  %170 = load %struct.view*, %struct.view** %4, align 8
  %171 = getelementptr inbounds %struct.view, %struct.view* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.view*, %struct.view** %4, align 8
  %174 = getelementptr inbounds %struct.view, %struct.view* %173, i32 0, i32 3
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i64*, i64** %176, align 8
  %178 = call i32 @string_copy(i32 %172, i64* %177)
  br label %189

179:                                              ; preds = %152
  %180 = load %struct.view*, %struct.view** %4, align 8
  %181 = getelementptr inbounds %struct.view, %struct.view* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.view*, %struct.view** %4, align 8
  %184 = getelementptr inbounds %struct.view, %struct.view* %183, i32 0, i32 1
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @string_copy_rev(i32 %182, i32 %187)
  br label %189

189:                                              ; preds = %179, %169
  %190 = load %struct.view*, %struct.view** %4, align 8
  %191 = load i8**, i8*** %7, align 8
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @begin_update(%struct.view* %190, i32* null, i8** %191, i32 %192)
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %189, %147, %129
  %195 = load i32, i32* %3, align 4
  ret i32 %195

196:                                              ; preds = %129
  unreachable
}

declare dso_local i32 @get_path(i64*) #1

declare dso_local i32 @string_rev_is_null(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @string_format(i8*, i8*, i8*, i64*) #1

declare dso_local i32 @io_run_buf(i8**, i32*, i32, i32*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @string_ncopy(i64*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @get_view_key(%struct.view*, i32) #1

declare dso_local i32 @get_path_encoding(i64*, i32) #1

declare dso_local i32 @string_copy(i32, i64*) #1

declare dso_local i32 @string_copy_rev(i32, i32) #1

declare dso_local i32 @begin_update(%struct.view*, i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
