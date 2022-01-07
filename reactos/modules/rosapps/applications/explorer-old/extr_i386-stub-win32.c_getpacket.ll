; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/explorer-old/extr_i386-stub-win32.c_getpacket.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/explorer-old/extr_i386-stub-win32.c_getpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remcomInBuffer = common dso_local global i8* null, align 8
@BUFMAX = common dso_local global i32 0, align 4
@remote_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"bad checksum.  My count = 0x%x, sent=0x%x. buf=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getpacket() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = load i8*, i8** @remcomInBuffer, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  store i8* %8, i8** %2, align 8
  br label %9

9:                                                ; preds = %0, %108
  br label %10

10:                                               ; preds = %14, %9
  %11 = call signext i8 (...) @getDebugChar()
  store i8 %11, i8* %6, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 36
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %10

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %27, %15
  store i8 0, i8* %3, align 1
  store i8 -1, i8* %4, align 1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BUFMAX, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = call signext i8 (...) @getDebugChar()
  store i8 %23, i8* %6, align 1
  %24 = load i8, i8* %6, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 36
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %16

28:                                               ; preds = %22
  %29 = load i8, i8* %6, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 35
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %47

33:                                               ; preds = %28
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %6, align 1
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %35, %37
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %3, align 1
  %40 = load i8, i8* %6, align 1
  %41 = load i8*, i8** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 %40, i8* %44, align 1
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %17

47:                                               ; preds = %32, %17
  %48 = load i8*, i8** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i8, i8* %6, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 35
  br i1 %54, label %55, label %108

55:                                               ; preds = %47
  %56 = call signext i8 (...) @getDebugChar()
  store i8 %56, i8* %6, align 1
  %57 = load i8, i8* %6, align 1
  %58 = call zeroext i8 @hex(i8 signext %57)
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 4
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %4, align 1
  %62 = call signext i8 (...) @getDebugChar()
  store i8 %62, i8* %6, align 1
  %63 = load i8, i8* %6, align 1
  %64 = call zeroext i8 @hex(i8 signext %63)
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %4, align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %67, %65
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %4, align 1
  %70 = load i8, i8* %3, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %4, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %55
  %76 = load i64, i64* @remote_debug, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* @stderr, align 4
  %80 = load i8, i8* %3, align 1
  %81 = load i8, i8* %4, align 1
  %82 = load i8*, i8** %2, align 8
  %83 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8 zeroext %80, i8 zeroext %81, i8* %82)
  br label %84

84:                                               ; preds = %78, %75
  %85 = call i32 @putDebugChar(i8 signext 45)
  br label %107

86:                                               ; preds = %55
  %87 = call i32 @putDebugChar(i8 signext 43)
  %88 = load i8*, i8** %2, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 58
  br i1 %92, label %93, label %104

93:                                               ; preds = %86
  %94 = load i8*, i8** %2, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @putDebugChar(i8 signext %96)
  %98 = load i8*, i8** %2, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @putDebugChar(i8 signext %100)
  %102 = load i8*, i8** %2, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 3
  store i8* %103, i8** %1, align 8
  br label %109

104:                                              ; preds = %86
  %105 = load i8*, i8** %2, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  store i8* %106, i8** %1, align 8
  br label %109

107:                                              ; preds = %84
  br label %108

108:                                              ; preds = %107, %47
  br label %9

109:                                              ; preds = %104, %93
  %110 = load i8*, i8** %1, align 8
  ret i8* %110
}

declare dso_local signext i8 @getDebugChar(...) #1

declare dso_local zeroext i8 @hex(i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8 zeroext, i8 zeroext, i8*) #1

declare dso_local i32 @putDebugChar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
