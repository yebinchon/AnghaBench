; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_ftp.c_ftp_RecvReply.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_ftp.c_ftp_RecvReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"malformatted response\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"received response: \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**, void (i8*, i8*)*, i8*)* @ftp_RecvReply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_RecvReply(i32* %0, i32* %1, i8** noalias %2, void (i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca void (i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store void (i8*, i8*)* %3, void (i8*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i8* @ftp_GetLine(i32* %17, i32* %18)
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %97

23:                                               ; preds = %5
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @strtoul(i8* %24, i8** %13, i32 10)
  store i32 %25, i32* %14, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = icmp ne i64 %30, 3
  br i1 %31, label %42, label %32

32:                                               ; preds = %23
  %33 = load i8*, i8** %13, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 45
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i8*, i8** %13, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 32
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %23
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @msg_Err(i32* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %94

45:                                               ; preds = %37, %32
  %46 = load i32*, i32** %7, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @msg_Dbg(i32* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i8*, i8** %13, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 45
  br i1 %52, label %53, label %83

53:                                               ; preds = %45
  %54 = load i8*, i8** %13, align 8
  store i8 32, i8* %54, align 1
  br label %55

55:                                               ; preds = %78, %53
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i8* @ftp_GetLine(i32* %56, i32* %57)
  store i8* %58, i8** %16, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %94

62:                                               ; preds = %55
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = call i32 @strncmp(i8* %63, i8* %64, i32 4)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %16, align 8
  call void %72(i8* %73, i8* %74)
  br label %75

75:                                               ; preds = %71, %62
  %76 = load i8*, i8** %16, align 8
  %77 = call i32 @free(i8* %76)
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br i1 %81, label %55, label %82

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %82, %45
  %84 = load i8**, i8*** %9, align 8
  %85 = icmp ne i8** %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i8*, i8** %12, align 8
  %88 = load i8**, i8*** %9, align 8
  store i8* %87, i8** %88, align 8
  br label %92

89:                                               ; preds = %83
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @free(i8* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %6, align 4
  br label %97

94:                                               ; preds = %61, %42
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @free(i8* %95)
  store i32 -1, i32* %6, align 4
  br label %97

97:                                               ; preds = %94, %92, %22
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i8* @ftp_GetLine(i32*, i32*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
