; ModuleID = '/home/carl/AnghaBench/vlc/src/stream_output/extr_stream_output.c_sout_StreamChainNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/stream_output/extr_stream_output.c_sout_StreamChainNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sout_StreamChainNew(i32* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %4
  %26 = load i8**, i8*** %9, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i8**, i8*** %9, align 8
  store i8* null, i8** %29, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i8*, i8** %8, align 8
  store i8* %31, i8** %5, align 8
  br label %122

32:                                               ; preds = %21
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @strdup(i8* %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i8* null, i8** %5, align 8
  br label %122

38:                                               ; preds = %32
  %39 = call i32 @vlc_array_init(i32* %11)
  %40 = call i32 @vlc_array_init(i32* %12)
  br label %41

41:                                               ; preds = %44, %38
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i8*, i8** %10, align 8
  %46 = call i8* @config_ChainCreate(i8** %14, i8** %13, i8* %45)
  store i8* %46, i8** %15, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %15, align 8
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @vlc_array_append_or_abort(i32* %11, i8* %50)
  %52 = load i8*, i8** %14, align 8
  %53 = call i32 @vlc_array_append_or_abort(i32* %12, i8* %52)
  br label %41

54:                                               ; preds = %41
  %55 = call i32 @vlc_array_count(i32* %12)
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %16, align 8
  %57 = call i32 @vlc_array_init(i32* %17)
  br label %58

58:                                               ; preds = %85, %54
  %59 = load i64, i64* %16, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %16, align 8
  %61 = icmp ne i64 %59, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %58
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %16, align 8
  %65 = call i8* @vlc_array_item_at_index(i32* %12, i64 %64)
  %66 = load i64, i64* %16, align 8
  %67 = call i8* @vlc_array_item_at_index(i32* %11, i64 %66)
  %68 = load i8*, i8** %8, align 8
  %69 = call i8* @sout_StreamNew(i32* %63, i8* %65, i8* %67, i8* %68)
  store i8* %69, i8** %8, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  br label %93

73:                                               ; preds = %62
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @vlc_array_count(i32* %12)
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i8**, i8*** %9, align 8
  %81 = icmp ne i8** %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8*, i8** %8, align 8
  %84 = load i8**, i8*** %9, align 8
  store i8* %83, i8** %84, align 8
  br label %85

85:                                               ; preds = %82, %79, %73
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @vlc_array_append_or_abort(i32* %17, i8* %86)
  br label %58

88:                                               ; preds = %58
  %89 = call i32 @vlc_array_clear(i32* %12)
  %90 = call i32 @vlc_array_clear(i32* %11)
  %91 = call i32 @vlc_array_clear(i32* %17)
  %92 = load i8*, i8** %8, align 8
  store i8* %92, i8** %5, align 8
  br label %122

93:                                               ; preds = %72
  %94 = load i64, i64* %16, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %16, align 8
  %96 = call i32 @vlc_array_count(i32* %17)
  store i32 %96, i32* %18, align 4
  br label %97

97:                                               ; preds = %101, %93
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %18, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = call i8* @vlc_array_item_at_index(i32* %17, i64 %103)
  %105 = call i32 @sout_StreamDelete(i8* %104)
  br label %97

106:                                              ; preds = %97
  %107 = call i32 @vlc_array_clear(i32* %17)
  br label %108

108:                                              ; preds = %112, %106
  %109 = load i64, i64* %16, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %16, align 8
  %111 = icmp ne i64 %109, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load i64, i64* %16, align 8
  %114 = call i8* @vlc_array_item_at_index(i32* %12, i64 %113)
  %115 = call i32 @free(i8* %114)
  %116 = load i64, i64* %16, align 8
  %117 = call i8* @vlc_array_item_at_index(i32* %11, i64 %116)
  %118 = call i32 @config_ChainDestroy(i8* %117)
  br label %108

119:                                              ; preds = %108
  %120 = call i32 @vlc_array_clear(i32* %12)
  %121 = call i32 @vlc_array_clear(i32* %11)
  store i8* null, i8** %5, align 8
  br label %122

122:                                              ; preds = %119, %88, %37, %30
  %123 = load i8*, i8** %5, align 8
  ret i8* %123
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @vlc_array_init(i32*) #1

declare dso_local i8* @config_ChainCreate(i8**, i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_array_append_or_abort(i32*, i8*) #1

declare dso_local i32 @vlc_array_count(i32*) #1

declare dso_local i8* @sout_StreamNew(i32*, i8*, i8*, i8*) #1

declare dso_local i8* @vlc_array_item_at_index(i32*, i64) #1

declare dso_local i32 @vlc_array_clear(i32*) #1

declare dso_local i32 @sout_StreamDelete(i8*) #1

declare dso_local i32 @config_ChainDestroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
