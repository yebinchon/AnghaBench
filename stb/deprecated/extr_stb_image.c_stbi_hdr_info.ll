; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_hdr_info.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_hdr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HDR_BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"#?RADIANCE\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"FORMAT=32-bit_rle_rgbe\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-Y \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"+X \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi_hdr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi_hdr_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @HDR_BUFLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i8* @hdr_gettoken(i32* %19, i8* %18)
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @stbi_rewind(i32* %24)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %87

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32*, i32** %6, align 8
  %29 = call i8* @hdr_gettoken(i32* %28, i8* %18)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %42

36:                                               ; preds = %27
  %37 = load i8*, i8** %12, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %13, align 4
  br label %41

41:                                               ; preds = %40, %36
  br label %27

42:                                               ; preds = %35
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @stbi_rewind(i32* %46)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %87

48:                                               ; preds = %42
  %49 = load i32*, i32** %6, align 8
  %50 = call i8* @hdr_gettoken(i32* %49, i8* %18)
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @stbi_rewind(i32* %55)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %87

57:                                               ; preds = %48
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 3
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i64 @strtol(i8* %60, i8** %12, i32 10)
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %69, %57
  %65 = load i8*, i8** %12, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %12, align 8
  br label %64

72:                                               ; preds = %64
  %73 = load i8*, i8** %12, align 8
  %74 = call i64 @strncmp(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @stbi_rewind(i32* %77)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %87

79:                                               ; preds = %72
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  store i8* %81, i8** %12, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = call i64 @strtol(i8* %82, i8** null, i32 10)
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %9, align 8
  store i32 3, i32* %86, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %87

87:                                               ; preds = %79, %76, %54, %45, %23
  %88 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @hdr_gettoken(i32*, i8*) #2

declare dso_local i32 @stbi_rewind(i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
