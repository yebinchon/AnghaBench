; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_histadd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_getline.c_gl_histadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gl_histadd.prev = internal global i8* null, align 8
@gl_init_done = common dso_local global i64 0, align 8
@hist_buf = common dso_local global i8** null, align 8
@hist_last = common dso_local global i64 0, align 8
@HIST_SIZE = common dso_local global i64 0, align 8
@hist_empty_elem = common dso_local global i8* null, align 8
@hist_pos = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_histadd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %3, align 8
  %6 = load i64, i64* @gl_init_done, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (...) @hist_init()
  store i64 0, i64* @gl_init_done, align 8
  br label %10

10:                                               ; preds = %8, %1
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br label %26

26:                                               ; preds = %21, %16, %11
  %27 = phi i1 [ true, %16 ], [ true, %11 ], [ %25, %21 ]
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  br label %11

31:                                               ; preds = %26
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %100

35:                                               ; preds = %31
  %36 = load i8*, i8** %2, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @strchr(i8* %39, i8 signext 10)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i8*, i8** @gl_histadd.prev, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** @gl_histadd.prev, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = load i8*, i8** @gl_histadd.prev, align 8
  %56 = load i8*, i8** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = call i64 @strncmp(i8* %55, i8* %56, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %54, %48, %45
  %62 = load i8*, i8** %2, align 8
  %63 = call i8* @hist_save(i8* %62)
  %64 = load i8**, i8*** @hist_buf, align 8
  %65 = load i64, i64* @hist_last, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  store i8* %63, i8** %66, align 8
  %67 = load i8**, i8*** @hist_buf, align 8
  %68 = load i64, i64* @hist_last, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** @gl_histadd.prev, align 8
  %71 = load i64, i64* @hist_last, align 8
  %72 = add i64 %71, 1
  %73 = load i64, i64* @HIST_SIZE, align 8
  %74 = urem i64 %72, %73
  store i64 %74, i64* @hist_last, align 8
  %75 = load i8**, i8*** @hist_buf, align 8
  %76 = load i64, i64* @hist_last, align 8
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %61
  %81 = load i8**, i8*** @hist_buf, align 8
  %82 = load i64, i64* @hist_last, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load i8**, i8*** @hist_buf, align 8
  %90 = load i64, i64* @hist_last, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @free(i8* %92)
  br label %94

94:                                               ; preds = %88, %80, %61
  %95 = load i8*, i8** @hist_empty_elem, align 8
  %96 = load i8**, i8*** @hist_buf, align 8
  %97 = load i64, i64* @hist_last, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  store i8* %95, i8** %98, align 8
  br label %99

99:                                               ; preds = %94, %54
  br label %100

100:                                              ; preds = %99, %31
  %101 = load i64, i64* @hist_last, align 8
  store i64 %101, i64* @hist_pos, align 8
  ret void
}

declare dso_local i32 @hist_init(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @hist_save(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
