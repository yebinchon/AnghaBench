; ModuleID = '/home/carl/AnghaBench/vlc/src/config/extr_chain.c_ChainGetValue.c'
source_filename = "/home/carl/AnghaBench/vlc/src/config/extr_chain.c_ChainGetValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**)* @ChainGetValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ChainGetValue(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %7 = load i8**, i8*** %2, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 123
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 61
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @ChainGetEnd(i8* %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = icmp ule i8* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i8* null, i8** %4, align 8
  br label %31

28:                                               ; preds = %21
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @SKIPSPACE(i8* %29)
  br label %31

31:                                               ; preds = %28, %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = icmp ule i8* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i8* null, i8** %4, align 8
  br label %108

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 39
  br i1 %40, label %54, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 34
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %89, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 123
  br i1 %53, label %54, label %89

54:                                               ; preds = %49, %41, %36
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %3, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 39
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 -1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 34
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i8*, i8** %3, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @SKIPTRAILINGSPACE(i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %68, %62, %54
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -1
  %75 = load i8*, i8** %3, align 8
  %76 = icmp ule i8* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i8* null, i8** %4, align 8
  br label %88

78:                                               ; preds = %72
  %79 = load i8*, i8** %3, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 -1
  %82 = load i8*, i8** %3, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = call i8* @strndup(i8* %79, i32 %86)
  store i8* %87, i8** %4, align 8
  br label %88

88:                                               ; preds = %78, %77
  br label %107

89:                                               ; preds = %49, %46
  %90 = load i8*, i8** %3, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @SKIPTRAILINGSPACE(i8* %90, i8* %91)
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = icmp ule i8* %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i8* null, i8** %4, align 8
  br label %106

97:                                               ; preds = %89
  %98 = load i8*, i8** %3, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = call i8* @strndup(i8* %98, i32 %104)
  store i8* %105, i8** %4, align 8
  br label %106

106:                                              ; preds = %97, %96
  br label %107

107:                                              ; preds = %106, %88
  br label %108

108:                                              ; preds = %107, %35
  %109 = load i8*, i8** %4, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 @config_StringUnescape(i8* %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i8*, i8** %5, align 8
  %116 = load i8**, i8*** %2, align 8
  store i8* %115, i8** %116, align 8
  %117 = load i8*, i8** %4, align 8
  ret i8* %117
}

declare dso_local i8* @ChainGetEnd(i8*) #1

declare dso_local i32 @SKIPSPACE(i8*) #1

declare dso_local i32 @SKIPTRAILINGSPACE(i8*, i8*) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @config_StringUnescape(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
