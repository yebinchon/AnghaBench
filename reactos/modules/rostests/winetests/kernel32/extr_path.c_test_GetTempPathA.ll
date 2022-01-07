; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetTempPathA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetTempPathA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"should fit into MAX_PATH\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"expected [%s], got [%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"returned length should be equal to the length of string\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Expected >= %u, got %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"expected 'a' at [%d], got 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"expected %d, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_GetTempPathA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetTempPathA(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = call i32 @lstrcpyA(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = call i32 @GetTempPathA(i32 %16, i8* %11)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = icmp sle i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8*, i8** %2, align 8
  %24 = call i64 @lstrcmpiA(i8* %11, i8* %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %27, i8* %11)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @strlen(i8* %11)
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 @GetTempPathA(i32 1, i8* %11)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sge i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %39, i32 %40)
  %42 = call i32 @GetTempPathA(i32 0, i8* null)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp sge i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %47, i32 %48)
  %50 = call i32 @lstrcpyA(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @GetTempPathA(i32 %51, i8* %11)
  store i32 %52, i32* %3, align 4
  %53 = load i8*, i8** %2, align 8
  %54 = call i64 @lstrcmpiA(i8* %11, i8* %53)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load i8*, i8** %2, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %57, i8* %11)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @strlen(i8* %11)
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %64 = trunc i64 %9 to i32
  %65 = call i32 @memset(i8* %11, i8 signext 97, i32 %64)
  %66 = trunc i64 %9 to i32
  %67 = call i32 @GetTempPathA(i32 %66, i8* %11)
  store i32 %67, i32* %3, align 4
  %68 = load i8*, i8** %2, align 8
  %69 = call i64 @lstrcmpiA(i8* %11, i8* %68)
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = load i8*, i8** %2, align 8
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %72, i8* %11)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @strlen(i8* %11)
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %102, %1
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ult i64 %85, %9
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %11, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 97
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %11, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %95, i32 %100)
  br label %102

102:                                              ; preds = %87
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %83

105:                                              ; preds = %83
  %106 = trunc i64 %9 to i32
  %107 = call i32 @memset(i8* %11, i8 signext 97, i32 %106)
  %108 = load i32, i32* %4, align 4
  %109 = sdiv i32 %108, 2
  %110 = call i32 @GetTempPathA(i32 %109, i8* %11)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %122, label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  %118 = icmp eq i32 %115, %117
  %119 = zext i1 %118 to i32
  %120 = call i64 @broken(i32 %119)
  %121 = icmp ne i64 %120, 0
  br label %122

122:                                              ; preds = %114, %105
  %123 = phi i1 [ true, %105 ], [ %121, %114 ]
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %3, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %125, i32 %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %148, %122
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = udiv i64 %9, 1
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %128
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %11, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 97
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %11, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %141, i32 %146)
  br label %148

148:                                              ; preds = %133
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %3, align 4
  br label %128

151:                                              ; preds = %128
  %152 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %152)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @lstrcpyA(i8*, i8*) #2

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @lstrcmpiA(i8*, i8*) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i64 @broken(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
