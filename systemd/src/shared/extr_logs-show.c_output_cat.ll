; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_logs-show.c_output_cat.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_logs-show.c_output_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OUTPUT_COLOR = common dso_local global i32 0, align 4
@ANSI_HIGHLIGHT_RED = common dso_local global i8* null, align 8
@ANSI_NORMAL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"MESSAGE\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Skipping message we can't read: %m\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to get data: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32, i32*, i64*)* @output_cat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_cat(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64* %6, i64** %15, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = ptrtoint i32* %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @OUTPUT_COLOR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i8*, i8** @ANSI_HIGHLIGHT_RED, align 8
  store i8* %32, i8** %19, align 8
  %33 = load i8*, i8** @ANSI_NORMAL, align 8
  store i8* %33, i8** %20, align 8
  br label %34

34:                                               ; preds = %31, %7
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @sd_journal_set_data_threshold(i32* %35, i32 0)
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @sd_journal_get_data(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %16, i64* %17)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* @EBADMSG, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @log_debug_errno(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %144

46:                                               ; preds = %34
  %47 = load i32, i32* %18, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %144

55:                                               ; preds = %49
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @log_error_errno(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 %57, i32* %8, align 4
  br label %144

58:                                               ; preds = %46
  %59 = load i64, i64* %17, align 8
  %60 = icmp uge i64 %59, 8
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i64*, i64** %15, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %134

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @OUTPUT_COLOR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %134

70:                                               ; preds = %65
  %71 = load i64*, i64** %15, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %15, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ule i64 %73, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i64*, i64** %15, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %17, align 8
  %84 = sub i64 %83, 8
  %85 = icmp ule i64 %82, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i8*, i8** %16, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 8
  %90 = load i64*, i64** %15, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @fwrite(i8* %89, i32 1, i64 %92, i32* %93)
  %95 = load i8*, i8** %19, align 8
  %96 = load i8*, i8** %19, align 8
  %97 = call i64 @strlen(i8* %96)
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @fwrite(i8* %95, i32 1, i64 %97, i32* %98)
  %100 = load i8*, i8** %16, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 8
  %102 = load i64*, i64** %15, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i64*, i64** %15, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %15, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = sub i64 %108, %111
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @fwrite(i8* %105, i32 1, i64 %112, i32* %113)
  %115 = load i8*, i8** %20, align 8
  %116 = load i8*, i8** %20, align 8
  %117 = call i64 @strlen(i8* %116)
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @fwrite(i8* %115, i32 1, i64 %117, i32* %118)
  %120 = load i8*, i8** %16, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 8
  %122 = load i64*, i64** %15, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 1
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  %126 = load i64, i64* %17, align 8
  %127 = sub i64 %126, 8
  %128 = load i64*, i64** %15, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  %130 = load i64, i64* %129, align 8
  %131 = sub i64 %127, %130
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @fwrite(i8* %125, i32 1, i64 %131, i32* %132)
  br label %141

134:                                              ; preds = %65, %58
  %135 = load i8*, i8** %16, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 8
  %137 = load i64, i64* %17, align 8
  %138 = sub i64 %137, 8
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @fwrite(i8* %136, i32 1, i64 %138, i32* %139)
  br label %141

141:                                              ; preds = %134, %70
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @fputc(i8 signext 10, i32* %142)
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %141, %55, %54, %43
  %145 = load i32, i32* %8, align 4
  ret i32 %145
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sd_journal_set_data_threshold(i32*, i32) #1

declare dso_local i32 @sd_journal_get_data(i32*, i8*, i8**, i64*) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
