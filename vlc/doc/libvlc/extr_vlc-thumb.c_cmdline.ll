; ModuleID = '/home/carl/AnghaBench/vlc/doc/libvlc/extr_vlc-thumb.c_cmdline.c'
source_filename = "/home/carl/AnghaBench/vlc/doc/libvlc/extr_vlc-thumb.c_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i8**, i8**, i8**, i32*)* @cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdline(i32 %0, i8** %1, i8** %2, i8** %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 1, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %36

17:                                               ; preds = %6
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 5
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load i8**, i8*** %8, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 2
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8**, i8*** %8, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i1 [ true, %20 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @usage(i8* %23, i32 %34)
  br label %36

36:                                               ; preds = %32, %17, %6
  %37 = load i32*, i32** %12, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i8**, i8*** %8, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i8**, i8*** %8, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @usage(i8* %49, i32 1)
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 2
  store i32 %53, i32* %13, align 4
  %54 = load i8**, i8*** %8, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @atoi(i8* %56)
  %58 = load i32*, i32** %12, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %36
  %60 = load i8**, i8*** %8, align 8
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i8**, i8*** %9, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i8**, i8*** %8, align 8
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @strdup(i8* %72)
  %74 = load i8**, i8*** %10, align 8
  store i8* %73, i8** %74, align 8
  %75 = load i8**, i8*** %10, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %59
  %79 = call i32 (...) @abort() #3
  unreachable

80:                                               ; preds = %59
  %81 = load i8**, i8*** %10, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strlen(i8* %82)
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = icmp uge i64 %84, 4
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load i8**, i8*** %10, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load i64, i64* %14, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = getelementptr inbounds i8, i8* %90, i64 -4
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %86
  %95 = load i8**, i8*** %10, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** %11, align 8
  store i8* %96, i8** %97, align 8
  br label %118

98:                                               ; preds = %86, %80
  %99 = load i64, i64* %14, align 8
  %100 = add i64 %99, 5
  %101 = trunc i64 %100 to i32
  %102 = call i8* @malloc(i32 %101)
  %103 = load i8**, i8*** %11, align 8
  store i8* %102, i8** %103, align 8
  %104 = load i8**, i8*** %11, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %98
  %108 = call i32 (...) @abort() #3
  unreachable

109:                                              ; preds = %98
  %110 = load i8**, i8*** %11, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = load i8**, i8*** %10, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strcpy(i8* %111, i8* %113)
  %115 = load i8**, i8*** %11, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strcat(i8* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %109, %94
  ret void
}

declare dso_local i32 @usage(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strdup(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
