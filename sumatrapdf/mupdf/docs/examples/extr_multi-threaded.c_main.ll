; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/docs/examples/extr_multi-threaded.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/docs/examples/extr_multi-threaded.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32, i32*, i32*, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FZ_LOCK_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"pthread_mutex_init()\00", align 1
@lock_mutex = common dso_local global i32 0, align 4
@unlock_mutex = common dso_local global i32 0, align 4
@FZ_STORE_UNLIMITED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"spawning %d threads, one per page...\0A\00", align 1
@fz_identity = common dso_local global i32 0, align 4
@renderer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"pthread_create()\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"joining %d threads...\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"out%04d.png\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"\09Saving %s...\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"finally!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.data*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.data*, align 8
  %22 = alloca [42 x i8], align 16
  %23 = alloca %struct.data*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %30 ]
  store i8* %32, i8** %6, align 8
  store %struct.data* null, %struct.data** %7, align 8
  %33 = load i32, i32* @FZ_LOCK_MAX, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %9, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %10, align 8
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %50, %31
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @FZ_LOCK_MAX, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %36, i64 %43
  %45 = call i64 @pthread_mutex_init(i32* %44, i32* null)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %37

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32* %36, i32** %54, align 8
  %55 = load i32, i32* @lock_mutex, align 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @unlock_mutex, align 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load i32, i32* @FZ_STORE_UNLIMITED, align 4
  %60 = call i32* @fz_new_context(i32* null, %struct.TYPE_3__* %8, i32 %59)
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @fz_register_document_handlers(i32* %61)
  %63 = load i32*, i32** %11, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32* @fz_open_document(i32* %63, i8* %64)
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @fz_count_pages(i32* %66, i32* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* @stderr, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 40
  %75 = trunc i64 %74 to i32
  %76 = call %struct.data* @malloc(i32 %75)
  store %struct.data* %76, %struct.data** %7, align 8
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %143, %53
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %146

81:                                               ; preds = %77
  %82 = load i32*, i32** %11, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32* @fz_load_page(i32* %82, i32* %83, i32 %84)
  store i32* %85, i32** %15, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @fz_bound_page(i32* %86, i32* %87, i32* %16)
  %89 = load i32*, i32** %11, align 8
  %90 = call i32* @fz_new_display_list(i32* %89, i32* %16)
  store i32* %90, i32** %18, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32*, i32** %18, align 8
  %93 = call i32* @fz_new_list_device(i32* %91, i32* %92)
  store i32* %93, i32** %19, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = load i32*, i32** %19, align 8
  %97 = call i32 @fz_run_page(i32* %94, i32* %95, i32* %96, i32* @fz_identity, i32* null)
  %98 = load i32*, i32** %11, align 8
  %99 = load i32*, i32** %19, align 8
  %100 = call i32 @fz_close_device(i32* %98, i32* %99)
  %101 = load i32*, i32** %11, align 8
  %102 = load i32*, i32** %19, align 8
  %103 = call i32 @fz_drop_device(i32* %101, i32* %102)
  %104 = load i32*, i32** %11, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @fz_drop_page(i32* %104, i32* %105)
  %107 = load i32*, i32** %11, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @fz_device_rgb(i32* %108)
  %110 = call i32 @fz_round_rect(i32* %17, i32* %16)
  %111 = call i32* @fz_new_pixmap_with_bbox(i32* %107, i32 %109, i32 %110, i32* null, i32 0)
  store i32* %111, i32** %20, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = call i32 @fz_clear_pixmap_with_value(i32* %112, i32* %113, i32 255)
  %115 = call %struct.data* @malloc(i32 40)
  store %struct.data* %115, %struct.data** %21, align 8
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  %118 = load %struct.data*, %struct.data** %21, align 8
  %119 = getelementptr inbounds %struct.data, %struct.data* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load %struct.data*, %struct.data** %21, align 8
  %122 = getelementptr inbounds %struct.data, %struct.data* %121, i32 0, i32 4
  store i32* %120, i32** %122, align 8
  %123 = load i32*, i32** %18, align 8
  %124 = load %struct.data*, %struct.data** %21, align 8
  %125 = getelementptr inbounds %struct.data, %struct.data* %124, i32 0, i32 1
  store i32* %123, i32** %125, align 8
  %126 = load i32, i32* %16, align 4
  %127 = load %struct.data*, %struct.data** %21, align 8
  %128 = getelementptr inbounds %struct.data, %struct.data* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load i32*, i32** %20, align 8
  %130 = load %struct.data*, %struct.data** %21, align 8
  %131 = getelementptr inbounds %struct.data, %struct.data* %130, i32 0, i32 2
  store i32* %129, i32** %131, align 8
  %132 = load %struct.data*, %struct.data** %7, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.data, %struct.data* %132, i64 %134
  %136 = load i32, i32* @renderer, align 4
  %137 = load %struct.data*, %struct.data** %21, align 8
  %138 = call i64 @pthread_create(%struct.data* %135, i32* null, i32 %136, %struct.data* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %81
  %141 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %81
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %77

146:                                              ; preds = %77
  %147 = load i32, i32* @stderr, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 (i32, i8*, ...) @fprintf(i32 %147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %13, align 4
  %151 = sub nsw i32 %150, 1
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %190, %146
  %153 = load i32, i32* %14, align 4
  %154 = icmp sge i32 %153, 0
  br i1 %154, label %155, label %193

155:                                              ; preds = %152
  %156 = load %struct.data*, %struct.data** %7, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.data, %struct.data* %156, i64 %158
  %160 = bitcast %struct.data** %23 to i8**
  %161 = call i64 @pthread_join(%struct.data* byval(%struct.data) align 8 %159, i8** %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %155
  %164 = call i32 @fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %155
  %166 = getelementptr inbounds [42 x i8], [42 x i8]* %22, i64 0, i64 0
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @sprintf(i8* %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @stderr, align 4
  %170 = getelementptr inbounds [42 x i8], [42 x i8]* %22, i64 0, i64 0
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %170)
  %172 = load i32*, i32** %11, align 8
  %173 = load %struct.data*, %struct.data** %23, align 8
  %174 = getelementptr inbounds %struct.data, %struct.data* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds [42 x i8], [42 x i8]* %22, i64 0, i64 0
  %177 = call i32 @fz_save_pixmap_as_png(i32* %172, i32* %175, i8* %176)
  %178 = load i32*, i32** %11, align 8
  %179 = load %struct.data*, %struct.data** %23, align 8
  %180 = getelementptr inbounds %struct.data, %struct.data* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @fz_drop_pixmap(i32* %178, i32* %181)
  %183 = load i32*, i32** %11, align 8
  %184 = load %struct.data*, %struct.data** %23, align 8
  %185 = getelementptr inbounds %struct.data, %struct.data* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @fz_drop_display_list(i32* %183, i32* %186)
  %188 = load %struct.data*, %struct.data** %23, align 8
  %189 = call i32 @free(%struct.data* %188)
  br label %190

190:                                              ; preds = %165
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %14, align 4
  br label %152

193:                                              ; preds = %152
  %194 = load i32, i32* @stderr, align 4
  %195 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %196 = call i32 @fflush(i32* null)
  %197 = load %struct.data*, %struct.data** %7, align 8
  %198 = call i32 @free(%struct.data* %197)
  %199 = load i32*, i32** %11, align 8
  %200 = load i32*, i32** %12, align 8
  %201 = call i32 @fz_drop_document(i32* %199, i32* %200)
  %202 = load i32*, i32** %11, align 8
  %203 = call i32 @fz_drop_context(i32* %202)
  store i32 0, i32* %3, align 4
  %204 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #2

declare dso_local i32 @fail(i8*) #2

declare dso_local i32* @fz_new_context(i32*, %struct.TYPE_3__*, i32) #2

declare dso_local i32 @fz_register_document_handlers(i32*) #2

declare dso_local i32* @fz_open_document(i32*, i8*) #2

declare dso_local i32 @fz_count_pages(i32*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local %struct.data* @malloc(i32) #2

declare dso_local i32* @fz_load_page(i32*, i32*, i32) #2

declare dso_local i32 @fz_bound_page(i32*, i32*, i32*) #2

declare dso_local i32* @fz_new_display_list(i32*, i32*) #2

declare dso_local i32* @fz_new_list_device(i32*, i32*) #2

declare dso_local i32 @fz_run_page(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @fz_close_device(i32*, i32*) #2

declare dso_local i32 @fz_drop_device(i32*, i32*) #2

declare dso_local i32 @fz_drop_page(i32*, i32*) #2

declare dso_local i32* @fz_new_pixmap_with_bbox(i32*, i32, i32, i32*, i32) #2

declare dso_local i32 @fz_device_rgb(i32*) #2

declare dso_local i32 @fz_round_rect(i32*, i32*) #2

declare dso_local i32 @fz_clear_pixmap_with_value(i32*, i32*, i32) #2

declare !callback !2 dso_local i64 @pthread_create(%struct.data*, i32*, i32, %struct.data*) #2

declare dso_local i64 @pthread_join(%struct.data* byval(%struct.data) align 8, i8**) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @fz_save_pixmap_as_png(i32*, i32*, i8*) #2

declare dso_local i32 @fz_drop_pixmap(i32*, i32*) #2

declare dso_local i32 @fz_drop_display_list(i32*, i32*) #2

declare dso_local i32 @free(%struct.data*) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i32 @fz_drop_document(i32*, i32*) #2

declare dso_local i32 @fz_drop_context(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
