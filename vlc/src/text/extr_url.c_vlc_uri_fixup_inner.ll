; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_uri_fixup_inner.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_uri_fixup_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"%%%02hhX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @vlc_uri_fixup_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlc_uri_fixup_inner(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vlc_memstream, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i1 [ false, %2 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %52, %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %20
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @isurihex(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 2
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isurihex(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42, %34
  store i32 1, i32* %6, align 4
  br label %55

51:                                               ; preds = %42, %27
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %20

55:                                               ; preds = %50, %20
  %56 = call i32 @vlc_memstream_open(%struct.vlc_memstream* %8)
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %95, %55
  %58 = load i8*, i8** %4, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %57
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %10, align 1
  %69 = load i8, i8* %10, align 1
  %70 = call i64 @isurisafe(i8 zeroext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %64
  %73 = load i8, i8* %10, align 1
  %74 = call i64 @isurisubdelim(i8 zeroext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %72
  %77 = load i8*, i8** %5, align 8
  %78 = load i8, i8* %10, align 1
  %79 = call i32* @strchr(i8* %77, i8 zeroext %78)
  %80 = icmp ne i32* %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = load i8, i8* %10, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 37
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85, %76, %72, %64
  %89 = load i8, i8* %10, align 1
  %90 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %8, i8 zeroext %89)
  br label %94

91:                                               ; preds = %85, %81
  %92 = load i8, i8* %10, align 1
  %93 = call i32 @vlc_memstream_printf(%struct.vlc_memstream* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 zeroext %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %9, align 8
  br label %57

98:                                               ; preds = %57
  %99 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %8)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i8* null, i8** %3, align 8
  br label %105

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %8, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %3, align 8
  br label %105

105:                                              ; preds = %102, %101
  %106 = load i8*, i8** %3, align 8
  ret i8* %106
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isurihex(i8 signext) #1

declare dso_local i32 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i64 @isurisafe(i8 zeroext) #1

declare dso_local i64 @isurisubdelim(i8 zeroext) #1

declare dso_local i32* @strchr(i8*, i8 zeroext) #1

declare dso_local i32 @vlc_memstream_putc(%struct.vlc_memstream*, i8 zeroext) #1

declare dso_local i32 @vlc_memstream_printf(%struct.vlc_memstream*, i8*, i8 zeroext) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
