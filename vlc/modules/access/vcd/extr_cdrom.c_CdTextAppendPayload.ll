; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/vcd/extr_cdrom.c_CdTextAppendPayload.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/vcd/extr_cdrom.c_CdTextAppendPayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SHIFT-JIS\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@VLC_ICONV_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i8**)* @CdTextAppendPayload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CdTextAppendPayload(i8* %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %19 = load i8**, i8*** %8, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i8**, i8*** %8, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strlen(i8* %24)
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i64 [ %25, %22 ], [ 0, %26 ]
  store i64 %28, i64* %9, align 8
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %38 [
    i32 130, label %30
    i32 129, label %32
    i32 128, label %35
  ]

30:                                               ; preds = %27
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %10, align 8
  store i8* null, i8** %11, align 8
  br label %39

32:                                               ; preds = %27
  %33 = load i64, i64* %6, align 8
  %34 = mul i64 %33, 2
  store i64 %34, i64* %10, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %39

35:                                               ; preds = %27
  %36 = load i64, i64* %6, align 8
  %37 = mul i64 %36, 4
  store i64 %37, i64* %10, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %39

38:                                               ; preds = %27
  br label %99

39:                                               ; preds = %35, %32, %30
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = mul i64 %41, 2
  %43 = add i64 %40, %42
  %44 = add i64 %43, 1
  store i64 %44, i64* %12, align 8
  %45 = load i8**, i8*** %8, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i8* @realloc(i8* %46, i64 %47)
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  br label %99

52:                                               ; preds = %39
  %53 = load i8*, i8** %13, align 8
  %54 = load i8**, i8*** %8, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load i8*, i8** %13, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @memcpy(i8* %60, i8* %61, i64 %62)
  %64 = load i8*, i8** %13, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %65, %66
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 @EnsureUTF8(i8* %69)
  br label %99

71:                                               ; preds = %52
  %72 = load i8*, i8** %11, align 8
  %73 = call i64 @vlc_iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp ne i64 %74, -1
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = load i8*, i8** %5, align 8
  store i8* %77, i8** %15, align 8
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* %16, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %17, align 8
  %82 = load i64, i64* %10, align 8
  store i64 %82, i64* %18, align 8
  %83 = load i64, i64* @VLC_ICONV_ERR, align 8
  %84 = load i64, i64* %14, align 8
  %85 = call i64 @vlc_iconv(i64 %84, i8** %15, i64* %16, i8** %17, i64* %18)
  %86 = icmp ne i64 %83, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %76
  %88 = load i8*, i8** %13, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %89, %90
  %92 = load i64, i64* %18, align 8
  %93 = sub i64 %91, %92
  %94 = getelementptr inbounds i8, i8* %88, i64 %93
  store i8 0, i8* %94, align 1
  br label %95

95:                                               ; preds = %87, %76
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @vlc_iconv_close(i64 %96)
  br label %98

98:                                               ; preds = %95, %71
  br label %99

99:                                               ; preds = %38, %51, %98, %57
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @EnsureUTF8(i8*) #1

declare dso_local i64 @vlc_iconv_open(i8*, i8*) #1

declare dso_local i64 @vlc_iconv(i64, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @vlc_iconv_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
