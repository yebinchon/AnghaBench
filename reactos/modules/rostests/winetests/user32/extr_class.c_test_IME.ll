; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_class.c_test_IME.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_class.c_test_IME.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@test_IME.ime_classW = internal constant [4 x i8] c"IME\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"user32.dll\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"BroadcastSystemMessageExA\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"BroadcastSystemMessageExA not available, skipping IME class test\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"imm32\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"imm32.dll is not loaded\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"IME\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"GetClassInfo failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"VirtualQuery returned %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"GetModuleFileName failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ntdll.dll\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"IME window proc implemented in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IME to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IME() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = call i64 @GetModuleHandleA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @GetProcAddress(i64 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %0
  %18 = call i32 @win_skip(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %165

19:                                               ; preds = %0
  %20 = call i64 @GetModuleHandleA(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @GetClassInfoA(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_8__* %6)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i8* (...) @GetLastError()
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @VirtualQuery(i32 %29, %struct.TYPE_9__* %4, i32 4)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 %32, 4
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %96

40:                                               ; preds = %19
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = trunc i64 %11 to i32
  %44 = call i32 @GetModuleFileNameA(i32 %42, i8* %13, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %13, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %66, %40
  %52 = load i8*, i8** %3, align 8
  %53 = icmp ugt i8* %52, %13
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load i8*, i8** %3, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 92
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %3, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 47
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54
  br label %69

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %68, i8** %3, align 8
  br label %51

69:                                               ; preds = %64, %51
  %70 = load i8*, i8** %3, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 92
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %3, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 47
  br i1 %78, label %79, label %82

79:                                               ; preds = %74, %69
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %3, align 8
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @lstrcmpiA(i8* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @lstrcmpiA(i8* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %86, %82
  %92 = phi i1 [ true, %82 ], [ %90, %86 ]
  %93 = zext i1 %92 to i32
  %94 = load i8*, i8** %3, align 8
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %91, %19
  %97 = call i32 @GetClassInfoW(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_IME.ime_classW, i64 0, i64 0), %struct.TYPE_7__* %5)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i8* (...) @GetLastError()
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %99)
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @VirtualQuery(i32 %102, %struct.TYPE_9__* %4, i32 4)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp eq i64 %105, 4
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %7, align 4
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = trunc i64 %11 to i32
  %113 = call i32 @GetModuleFileNameA(i32 %111, i8* %13, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %13, i64 %117
  %119 = getelementptr inbounds i8, i8* %118, i64 -1
  store i8* %119, i8** %3, align 8
  br label %120

120:                                              ; preds = %135, %96
  %121 = load i8*, i8** %3, align 8
  %122 = icmp ugt i8* %121, %13
  br i1 %122, label %123, label %138

123:                                              ; preds = %120
  %124 = load i8*, i8** %3, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 92
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %3, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 47
  br i1 %132, label %133, label %134

133:                                              ; preds = %128, %123
  br label %138

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134
  %136 = load i8*, i8** %3, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 -1
  store i8* %137, i8** %3, align 8
  br label %120

138:                                              ; preds = %133, %120
  %139 = load i8*, i8** %3, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 92
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i8*, i8** %3, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 47
  br i1 %147, label %148, label %151

148:                                              ; preds = %143, %138
  %149 = load i8*, i8** %3, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %3, align 8
  br label %151

151:                                              ; preds = %148, %143
  %152 = load i8*, i8** %3, align 8
  %153 = call i32 @lstrcmpiA(i8* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load i8*, i8** %3, align 8
  %157 = call i32 @lstrcmpiA(i8* %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  br label %160

160:                                              ; preds = %155, %151
  %161 = phi i1 [ true, %151 ], [ %159, %155 ]
  %162 = zext i1 %161 to i32
  %163 = load i8*, i8** %3, align 8
  %164 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %163)
  store i32 0, i32* %9, align 4
  br label %165

165:                                              ; preds = %160, %17
  %166 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %9, align 4
  switch i32 %167, label %169 [
    i32 0, label %168
    i32 1, label %168
  ]

168:                                              ; preds = %165, %165
  ret void

169:                                              ; preds = %165
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetProcAddress(i64, i8*) #2

declare dso_local i64 @GetModuleHandleA(i8*) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetClassInfoA(i32*, i8*, %struct.TYPE_8__*) #2

declare dso_local i8* @GetLastError(...) #2

declare dso_local i32 @VirtualQuery(i32, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @GetModuleFileNameA(i32, i8*, i32) #2

declare dso_local i32 @lstrcmpiA(i8*, i8*) #2

declare dso_local i32 @GetClassInfoW(i32*, i8*, %struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
