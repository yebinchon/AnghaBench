; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_treefuncs.c_skip_to_difference.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_treefuncs.c_skip_to_difference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64 }

@STATUS_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"next_item2 returned %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"find_item returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skip_to_difference(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_14__, align 8
  %18 = alloca %struct.TYPE_14__, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %13, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %14, align 8
  br label %25

25:                                               ; preds = %54, %5
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %15, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %16, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %13, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %14, align 8
  br label %38

38:                                               ; preds = %25
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %40 = icmp ne %struct.TYPE_13__* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %43 = icmp ne %struct.TYPE_13__* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %48, %52
  br label %54

54:                                               ; preds = %44, %41, %38
  %55 = phi i1 [ false, %41 ], [ false, %38 ], [ %53, %44 ]
  br i1 %55, label %25, label %56

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %198
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %61 = call i32 @next_item2(i32* %58, %struct.TYPE_13__* %59, %struct.TYPE_12__* %60, %struct.TYPE_14__* %17)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @STATUS_NOT_FOUND, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32*, i32** %10, align 8
  store i32 1, i32* %66, align 4
  br label %76

67:                                               ; preds = %57
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @NT_SUCCESS(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %6, align 4
  br label %207

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %80 = call i32 @next_item2(i32* %77, %struct.TYPE_13__* %78, %struct.TYPE_12__* %79, %struct.TYPE_14__* %18)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @STATUS_NOT_FOUND, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32*, i32** %11, align 8
  store i32 1, i32* %85, align 4
  br label %95

86:                                               ; preds = %76
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @NT_SUCCESS(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %6, align 4
  br label %207

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %84
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %150

103:                                              ; preds = %99, %95
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %103
  %108 = load i32*, i32** %7, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = call i32 @find_item(i32* %108, i32 %111, %struct.TYPE_14__* %112, i32* %115, i32 0, i32* null)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @NT_SUCCESS(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %107
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %6, align 4
  br label %207

124:                                              ; preds = %107
  br label %148

125:                                              ; preds = %103
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %147, label %129

129:                                              ; preds = %125
  %130 = load i32*, i32** %7, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = call i32 @find_item(i32* %130, i32 %133, %struct.TYPE_14__* %134, i32* %137, i32 0, i32* null)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @NT_SUCCESS(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %129
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %6, align 4
  br label %207

146:                                              ; preds = %129
  br label %147

147:                                              ; preds = %146, %125
  br label %148

148:                                              ; preds = %147, %124
  %149 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %149, i32* %6, align 4
  br label %207

150:                                              ; preds = %99
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %155, %160
  br i1 %161, label %162, label %198

162:                                              ; preds = %150
  %163 = load i32*, i32** %7, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = call i32 @find_item(i32* %163, i32 %166, %struct.TYPE_14__* %167, i32* %170, i32 0, i32* null)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @NT_SUCCESS(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %162
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %6, align 4
  br label %207

179:                                              ; preds = %162
  %180 = load i32*, i32** %7, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = call i32 @find_item(i32* %180, i32 %183, %struct.TYPE_14__* %184, i32* %187, i32 0, i32* null)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @NT_SUCCESS(i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %179
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* %12, align 4
  store i32 %195, i32* %6, align 4
  br label %207

196:                                              ; preds = %179
  %197 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %197, i32* %6, align 4
  br label %207

198:                                              ; preds = %150
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  store %struct.TYPE_13__* %200, %struct.TYPE_13__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  store %struct.TYPE_12__* %202, %struct.TYPE_12__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  store %struct.TYPE_13__* %204, %struct.TYPE_13__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  store %struct.TYPE_12__* %206, %struct.TYPE_12__** %16, align 8
  br label %57

207:                                              ; preds = %196, %192, %175, %148, %142, %120, %90, %71
  %208 = load i32, i32* %6, align 4
  ret i32 %208
}

declare dso_local i32 @next_item2(i32*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_14__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @find_item(i32*, i32, %struct.TYPE_14__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
