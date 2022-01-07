; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_HandleAncillary.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_HandleAncillary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"malformed ancillary packet (size %u > %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @HandleAncillary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleAncillary(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ult i32 %8, 7
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 1023
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 1023
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15, %10, %3
  br label %162

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 255
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub i32 %31, 6
  %33 = load i32, i32* %7, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub i32 %38, 6
  %40 = call i32 @msg_Warn(i32* %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %39)
  br label %162

41:                                               ; preds = %26
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %110 [
    i32 767, label %45
    i32 509, label %55
    i32 507, label %65
    i32 761, label %75
    i32 495, label %85
    i32 750, label %91
    i32 749, label %97
    i32 492, label %103
    i32 510, label %109
    i32 764, label %109
    i32 762, label %109
    i32 504, label %109
    i32 136, label %111
  ]

45:                                               ; preds = %41
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 255
  %54 = call i32 @HandleAudioData(i32* %46, i32* %48, i32 %49, i32 1, i32 %53)
  br label %151

55:                                               ; preds = %41
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 255
  %64 = call i32 @HandleAudioData(i32* %56, i32* %58, i32 %59, i32 2, i32 %63)
  br label %151

65:                                               ; preds = %41
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 255
  %74 = call i32 @HandleAudioData(i32* %66, i32* %68, i32 %69, i32 3, i32 %73)
  br label %151

75:                                               ; preds = %41
  %76 = load i32*, i32** %4, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 255
  %84 = call i32 @HandleAudioData(i32* %76, i32* %78, i32 %79, i32 4, i32 %83)
  br label %151

85:                                               ; preds = %41
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 6
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @HandleAudioConfig(i32* %86, i32* %88, i32 %89, i32 1)
  br label %151

91:                                               ; preds = %41
  %92 = load i32*, i32** %4, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 6
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @HandleAudioConfig(i32* %92, i32* %94, i32 %95, i32 2)
  br label %151

97:                                               ; preds = %41
  %98 = load i32*, i32** %4, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 6
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @HandleAudioConfig(i32* %98, i32* %100, i32 %101, i32 3)
  br label %151

103:                                              ; preds = %41
  %104 = load i32*, i32** %4, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 6
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @HandleAudioConfig(i32* %104, i32* %106, i32 %107, i32 4)
  br label %151

109:                                              ; preds = %41, %41, %41, %41
  br label %110

110:                                              ; preds = %41, %109
  br label %151

111:                                              ; preds = %41
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 7
  store i32* %113, i32** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sub i32 %114, 7
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %138, %111
  %117 = load i32, i32* %6, align 4
  %118 = icmp uge i32 %117, 7
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %119
  %125 = load i32*, i32** %5, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 1023
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 1023
  br label %134

134:                                              ; preds = %129, %124, %119
  %135 = phi i1 [ true, %124 ], [ true, %119 ], [ %133, %129 ]
  br label %136

136:                                              ; preds = %134, %116
  %137 = phi i1 [ false, %116 ], [ %135, %134 ]
  br i1 %137, label %138, label %143

138:                                              ; preds = %136
  %139 = load i32*, i32** %5, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %5, align 8
  %141 = load i32, i32* %6, align 4
  %142 = add i32 %141, -1
  store i32 %142, i32* %6, align 4
  br label %116

143:                                              ; preds = %136
  %144 = load i32, i32* %6, align 4
  %145 = icmp uge i32 %144, 7
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32*, i32** %4, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %6, align 4
  call void @HandleAncillary(i32* %147, i32* %148, i32 %149)
  br label %150

150:                                              ; preds = %146, %143
  br label %162

151:                                              ; preds = %110, %103, %97, %91, %85, %75, %65, %55, %45
  %152 = load i32*, i32** %4, align 8
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = getelementptr inbounds i32, i32* %156, i64 7
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %7, align 4
  %160 = sub i32 %158, %159
  %161 = sub i32 %160, 7
  call void @HandleAncillary(i32* %152, i32* %157, i32 %161)
  br label %162

162:                                              ; preds = %151, %150, %35, %25
  ret void
}

declare dso_local i32 @msg_Warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @HandleAudioData(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @HandleAudioConfig(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
