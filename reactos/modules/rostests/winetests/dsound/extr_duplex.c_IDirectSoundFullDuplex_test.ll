; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_duplex.c_IDirectSoundFullDuplex_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/dsound/extr_duplex.c_IDirectSoundFullDuplex_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IUnknown = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"IDirectSoundFullDuplex_QueryInterface(IID_IUnknown) failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"IDirectSoundFullDuplex_Release() has %d references, should have 0\0A\00", align 1
@IID_IDirectSound = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"IDirectSoundFullDuplex_QueryInterface(IID_IDirectSound) failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"IDirectSound_Release() has %d references, should have 0\0A\00", align 1
@IID_IDirectSound8 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [71 x i8] c"IDirectSoundFullDuplex_QueryInterface(IID_IDirectSound8) failed: %08x\0A\00", align 1
@IID_IDirectSoundFullDuplex = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [71 x i8] c"IDirectSound8_QueryInterface(IID_IDirectSoundFullDuplex) failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"IDirectSoundFullDuplex_Release() has %d references, should have 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"IDirectSound8_Release() has %d references, should have 0\0A\00", align 1
@IID_IDirectSoundCapture = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [77 x i8] c"IDirectSoundFullDuplex_QueryInterface(IID_IDirectSoundCapture) failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"IDirectSoundCapture_Release() has %d references, should have 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [80 x i8] c"IDirectSoundFullDuplex_QueryInterface(IID_IDirectSoundFullDuplex) failed: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"different interfaces\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i32)* @IDirectSoundFullDuplex_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IDirectSoundFullDuplex_test(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32** %11 to i32*
  %19 = call i32 @IDirectSoundFullDuplex_QueryInterface(i32* %17, i32* @IID_IUnknown, i32* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @DS_OK, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @DS_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %4
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @IDirectSoundFullDuplex_Release(i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %29, %4
  %38 = load i32*, i32** %5, align 8
  %39 = bitcast i32** %12 to i32*
  %40 = call i32 @IDirectSoundFullDuplex_QueryInterface(i32* %38, i32* @IID_IDirectSound, i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @DS_OK, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @E_NOINTERFACE, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = icmp eq i32 %41, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @DS_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %48
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @IDirectSound_Release(i32* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %57, %48
  %66 = load i32*, i32** %5, align 8
  %67 = bitcast i32** %13 to i32*
  %68 = call i32 @IDirectSoundFullDuplex_QueryInterface(i32* %66, i32* @IID_IDirectSound8, i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @DS_OK, align 4
  br label %76

74:                                               ; preds = %65
  %75 = load i32, i32* @E_NOINTERFACE, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = icmp eq i32 %69, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @DS_OK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %76
  %86 = load i32*, i32** %13, align 8
  %87 = bitcast i32** %16 to i32*
  %88 = call i32 @IDirectSound8_QueryInterface(i32* %86, i32* @IID_IDirectSoundFullDuplex, i32* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @DS_OK, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @DS_OK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %85
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @IDirectSoundFullDuplex_Release(i32* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp eq i32 %101, 1
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %10, align 4
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %98, %85
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 @IDirectSound8_Release(i32* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %106, %76
  %115 = load i32*, i32** %5, align 8
  %116 = bitcast i32** %14 to i32*
  %117 = call i32 @IDirectSoundFullDuplex_QueryInterface(i32* %115, i32* @IID_IDirectSoundCapture, i32* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i64, i64* %6, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* @DS_OK, align 4
  br label %125

123:                                              ; preds = %114
  %124 = load i32, i32* @E_NOINTERFACE, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = icmp eq i32 %118, %126
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @DS_OK, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %125
  %135 = load i32*, i32** %14, align 8
  %136 = call i32 @IDirectSoundCapture_Release(i32* %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp eq i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %10, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %134, %125
  %143 = load i32*, i32** %5, align 8
  %144 = bitcast i32** %15 to i32*
  %145 = call i32 @IDirectSoundFullDuplex_QueryInterface(i32* %143, i32* @IID_IDirectSoundFullDuplex, i32* %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @DS_OK, align 4
  %148 = icmp eq i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %9, align 4
  %151 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.10, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @DS_OK, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %142
  %156 = load i32*, i32** %5, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = icmp eq i32* %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %161 = load i32*, i32** %15, align 8
  %162 = call i32 @IDirectSound8_Release(i32* %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp eq i32 %163, 1
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %10, align 4
  %167 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %155, %142
  %169 = load i32*, i32** %5, align 8
  %170 = call i32 @IDirectSoundFullDuplex_Release(i32* %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp eq i32 %171, 0
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %10, align 4
  %175 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  ret void
}

declare dso_local i32 @IDirectSoundFullDuplex_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IDirectSoundFullDuplex_Release(i32*) #1

declare dso_local i32 @IDirectSound_Release(i32*) #1

declare dso_local i32 @IDirectSound8_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i32 @IDirectSound8_Release(i32*) #1

declare dso_local i32 @IDirectSoundCapture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
