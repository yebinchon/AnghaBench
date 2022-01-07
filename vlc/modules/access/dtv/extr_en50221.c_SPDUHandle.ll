; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_SPDUHandle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_SPDUHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32, i32*, i32)* }

@.str = private unnamed_addr constant [46 x i8] c"closing a session which is not allocated (%d)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"unexpected tag in SPDUHandle (%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32*, i32)* @SPDUHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SPDUHandle(%struct.TYPE_10__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %155 [
    i32 128, label %13
    i32 129, label %42
    i32 130, label %57
    i32 132, label %72
    i32 131, label %93
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %163

17:                                               ; preds = %13
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load i32 (%struct.TYPE_10__*, i32, i32*, i32)*, i32 (%struct.TYPE_10__*, i32, i32*, i32)** %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 4
  %41 = call i32 %34(%struct.TYPE_10__* %35, i32 %36, i32* %38, i32 %40)
  br label %163

42:                                               ; preds = %4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 6
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 4
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %42
  br label %163

51:                                               ; preds = %45
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @SessionOpen(%struct.TYPE_10__* %52, i32 %53, i32* %54, i32 %55)
  br label %163

57:                                               ; preds = %4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 9
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 7
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %57
  br label %163

66:                                               ; preds = %60
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @SessionCreateResponse(%struct.TYPE_10__* %67, i32 %68, i32* %69, i32 %70)
  br label %163

72:                                               ; preds = %4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 4
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 2
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %72
  br label %163

81:                                               ; preds = %75
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %85, %88
  store i32 %89, i32* %9, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @SessionClose(%struct.TYPE_10__* %90, i32 %91)
  br label %163

93:                                               ; preds = %4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 5
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 3
  br i1 %100, label %101, label %102

101:                                              ; preds = %96, %93
  br label %163

102:                                              ; preds = %96
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 8
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %106, %109
  store i32 %110, i32* %9, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %102
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @msg_Err(i32 %118, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %119)
  br label %154

121:                                              ; preds = %102
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %129, align 8
  %131 = icmp ne i32 (%struct.TYPE_10__*, i32)* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %121
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %140, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 %141(%struct.TYPE_10__* %142, i32 %143)
  br label %145

145:                                              ; preds = %132, %121
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  br label %154

154:                                              ; preds = %145, %115
  br label %163

155:                                              ; preds = %4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @msg_Err(i32 %158, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %16, %50, %65, %80, %101, %155, %154, %81, %66, %51, %17
  ret void
}

declare dso_local i32 @SessionOpen(%struct.TYPE_10__*, i32, i32*, i32) #1

declare dso_local i32 @SessionCreateResponse(%struct.TYPE_10__*, i32, i32*, i32) #1

declare dso_local i32 @SessionClose(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @msg_Err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
