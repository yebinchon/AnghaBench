; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_image.c_IsTarga.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_image.c_IsTarga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STREAM_CAN_SEEK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TRUEVISION-XFILE.\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @IsTarga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsTarga(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @vlc_stream_Peek(i32* %9, i32** %4, i32 18)
  %11 = icmp slt i32 %10, 18
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %155

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %155

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 7
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %24, %19
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 7
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 8
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 7
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 15
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 7
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 16
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 24
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 7
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 32
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %155

55:                                               ; preds = %49, %44, %39, %34, %29, %24
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 3
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 9
  br i1 %64, label %70, label %65

65:                                               ; preds = %60, %55
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 11
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %60
  store i32 0, i32* %2, align 4
  br label %155

71:                                               ; preds = %65
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 12
  %74 = call i64 @GetWLE(i32* %73)
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 14
  %79 = call i64 @GetWLE(i32* %78)
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %71
  store i32 0, i32* %2, align 4
  br label %155

82:                                               ; preds = %76
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 16
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 8
  br i1 %86, label %87, label %108

87:                                               ; preds = %82
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 16
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 15
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 16
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 16
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 16
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 24
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 16
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 32
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %155

108:                                              ; preds = %102, %97, %92, %87, %82
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 17
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 192
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %155

115:                                              ; preds = %108
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @stream_Size(i32* %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp sle i32 %118, 44
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %155

121:                                              ; preds = %115
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* @STREAM_CAN_SEEK, align 4
  %124 = call i64 @vlc_stream_Control(i32* %122, i32 %123, i32* %6)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126, %121
  store i32 0, i32* %2, align 4
  br label %155

130:                                              ; preds = %126
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @vlc_stream_Tell(i32* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32*, i32** %3, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sub nsw i32 %134, 26
  %136 = call i64 @vlc_stream_Seek(i32* %133, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %155

139:                                              ; preds = %130
  %140 = load i32*, i32** %3, align 8
  %141 = call i32 @vlc_stream_Peek(i32* %140, i32** %8, i32 26)
  %142 = icmp slt i32 %141, 26
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = load i32*, i32** %8, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 8
  %146 = call i64 @memcmp(i32* %145, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 18)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143, %139
  store i32 0, i32* %2, align 4
  br label %155

149:                                              ; preds = %143
  %150 = load i32*, i32** %3, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i64 @vlc_stream_Seek(i32* %150, i32 %151)
  %153 = icmp eq i64 %152, 0
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %149, %148, %138, %129, %120, %114, %107, %81, %70, %54, %18, %12
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @vlc_stream_Peek(i32*, i32**, i32) #1

declare dso_local i64 @GetWLE(i32*) #1

declare dso_local i32 @stream_Size(i32*) #1

declare dso_local i64 @vlc_stream_Control(i32*, i32, i32*) #1

declare dso_local i32 @vlc_stream_Tell(i32*) #1

declare dso_local i64 @vlc_stream_Seek(i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
