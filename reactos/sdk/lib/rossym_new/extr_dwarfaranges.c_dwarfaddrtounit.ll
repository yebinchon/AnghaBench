; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfaranges.c_dwarfaddrtounit.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_dwarfaranges.c_dwarfaddrtounit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32*, i32*, %struct.TYPE_12__* }

@nil = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"buffer underflow reading address ranges header\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"bad dwarf version 0x%x in address ranges header\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"address 0x%lux is not listed in dwarf debugging symbols\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarfaddrtounit(%struct.TYPE_12__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %18 = call i32 @memset(%struct.TYPE_11__* %8, i32 0, i32 32)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32* %24, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32* %33, i32** %34, align 8
  br label %35

35:                                               ; preds = %166, %3
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ult i32* %37, %39
  br i1 %40, label %41, label %169

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %16, align 8
  %44 = call i32 @dwarfget4(%struct.TYPE_11__* %8)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 -4
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32* %50, i32** %51, align 8
  store i32 -1, i32* %4, align 4
  br label %172

52:                                               ; preds = %41
  %53 = call i32 @dwarfget2(%struct.TYPE_11__* %8)
  store i32 %53, i32* %12, align 4
  %54 = icmp ne i32 %53, 2
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** @nil, align 8
  %59 = icmp eq i32* %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %165, %145, %90, %60
  %62 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %61
  store i32 -1, i32* %4, align 4
  br label %172

67:                                               ; preds = %52
  %68 = call i32 @dwarfget4(%struct.TYPE_11__* %8)
  store i32 %68, i32* %13, align 4
  %69 = call i8* @dwarfget1(%struct.TYPE_11__* %8)
  %70 = ptrtoint i8* %69 to i32
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %70, i32* %71, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %67
  %82 = call i8* @dwarfget1(%struct.TYPE_11__* %8)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @USED(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** @nil, align 8
  %89 = icmp eq i32* %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %61

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = ptrtoint i32* %93 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 2, %100
  %102 = sext i32 %101 to i64
  %103 = srem i64 %98, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %91
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 2, %108
  %110 = load i32, i32* %10, align 4
  %111 = sub nsw i32 %109, %110
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = sext i32 %111 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %112, align 8
  br label %116

116:                                              ; preds = %106, %91
  %117 = load i32*, i32** %16, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32* %121, i32** %17, align 8
  br label %122

122:                                              ; preds = %159, %139, %116
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32*, i32** @nil, align 8
  %126 = icmp ne i32* %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = icmp ult i32* %129, %130
  br label %132

132:                                              ; preds = %127, %122
  %133 = phi i1 [ false, %122 ], [ %131, %127 ]
  br i1 %133, label %134, label %160

134:                                              ; preds = %132
  %135 = call i32 @dwarfgetaddr(%struct.TYPE_11__* %8)
  store i32 %135, i32* %14, align 4
  %136 = call i32 @dwarfgetaddr(%struct.TYPE_11__* %8)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  br label %122

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32*, i32** @nil, align 8
  %144 = icmp eq i32* %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %61

146:                                              ; preds = %140
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %152, %153
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load i32, i32* %13, align 4
  %158 = load i32*, i32** %7, align 8
  store i32 %157, i32* %158, align 4
  store i32 0, i32* %4, align 4
  br label %172

159:                                              ; preds = %150, %146
  br label %122

160:                                              ; preds = %132
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32*, i32** @nil, align 8
  %164 = icmp eq i32* %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %61

166:                                              ; preds = %160
  %167 = load i32*, i32** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32* %167, i32** %168, align 8
  br label %35

169:                                              ; preds = %35
  %170 = load i32, i32* %6, align 4
  %171 = call i32 (i8*, ...) @werrstr(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  store i32 -1, i32* %4, align 4
  br label %172

172:                                              ; preds = %169, %156, %66, %47
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @dwarfget4(%struct.TYPE_11__*) #1

declare dso_local i32 @dwarfget2(%struct.TYPE_11__*) #1

declare dso_local i32 @werrstr(i8*, ...) #1

declare dso_local i8* @dwarfget1(%struct.TYPE_11__*) #1

declare dso_local i32 @USED(i32) #1

declare dso_local i32 @dwarfgetaddr(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
