; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_assoc.c_candidates_create_internal.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_assoc.c_candidates_create_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@HASH_COLLIDE_COUNT = common dso_local global i64 0, align 8
@BAD_NODE_TIMEOUT = common dso_local global i32 0, align 4
@USED = common dso_local global i64 0, align 8
@CANDIDATES_SEEN_TIMEOUT = common dso_local global i32 0, align 4
@SEENG = common dso_local global i64 0, align 8
@CANDIDATES_HEARD_TIMEOUT = common dso_local global i32 0, align 4
@SEENB_HEARDG = common dso_local global i64 0, align 8
@BAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i32*, i32, i32, i64*, i64*)* @candidates_create_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @candidates_create_internal(%struct.TYPE_9__* %0, i64 %1, i32* %2, i32 %3, i32 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca [6 x i64], align 16
  %22 = alloca %struct.TYPE_8__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %7
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i64*, i64** %14, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64*, i64** %15, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %30, %27, %7
  store i32 0, i32* %8, align 4
  br label %158

37:                                               ; preds = %33
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i64 @candidates_id_bucket(%struct.TYPE_9__* %38, i32* %39)
  store i64 %40, i64* %16, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i64, i64* %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %44
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %17, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = urem i64 %46, %49
  store i64 %50, i64* %19, align 8
  %51 = getelementptr inbounds [6 x i64], [6 x i64]* %21, i64 0, i64 0
  %52 = call i32 @memset(i64* %51, i32 0, i32 48)
  store i64 0, i64* %18, align 8
  br label %53

53:                                               ; preds = %114, %37
  %54 = load i64, i64* %18, align 8
  %55 = load i64, i64* @HASH_COLLIDE_COUNT, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %120

57:                                               ; preds = %53
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i64, i64* %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %61
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %22, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %57
  %68 = load i64, i64* %16, align 8
  %69 = load i64*, i64** %14, align 8
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* %19, align 8
  %71 = load i64*, i64** %15, align 8
  store i64 %70, i64* %71, align 8
  store i32 1, i32* %8, align 4
  br label %158

72:                                               ; preds = %57
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %77 = call i32 @is_timeout(i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = load i64, i64* @USED, align 8
  store i64 %80, i64* %20, align 8
  br label %103

81:                                               ; preds = %72
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CANDIDATES_SEEN_TIMEOUT, align 4
  %86 = call i32 @is_timeout(i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = load i64, i64* @SEENG, align 8
  store i64 %89, i64* %20, align 8
  br label %102

90:                                               ; preds = %81
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CANDIDATES_HEARD_TIMEOUT, align 4
  %95 = call i32 @is_timeout(i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %90
  %98 = load i64, i64* @SEENB_HEARDG, align 8
  store i64 %98, i64* %20, align 8
  br label %101

99:                                               ; preds = %90
  %100 = load i64, i64* @BAD, align 8
  store i64 %100, i64* %20, align 8
  br label %101

101:                                              ; preds = %99, %97
  br label %102

102:                                              ; preds = %101, %88
  br label %103

103:                                              ; preds = %102, %79
  %104 = load i64, i64* %20, align 8
  %105 = getelementptr inbounds [6 x i64], [6 x i64]* %21, i64 0, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i64, i64* %19, align 8
  %110 = add i64 %109, 1
  %111 = load i64, i64* %20, align 8
  %112 = getelementptr inbounds [6 x i64], [6 x i64]* %21, i64 0, i64 %111
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %116 = load i64, i64* %19, align 8
  %117 = call i64 @hash_collide(%struct.TYPE_9__* %115, i64 %116)
  store i64 %117, i64* %19, align 8
  %118 = load i64, i64* %18, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %18, align 8
  br label %53

120:                                              ; preds = %53
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i64, i64* @USED, align 8
  br label %134

125:                                              ; preds = %120
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i64, i64* @SEENG, align 8
  br label %132

130:                                              ; preds = %125
  %131 = load i64, i64* @SEENB_HEARDG, align 8
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i64 [ %129, %128 ], [ %131, %130 ]
  br label %134

134:                                              ; preds = %132, %123
  %135 = phi i64 [ %124, %123 ], [ %133, %132 ]
  store i64 %135, i64* %24, align 8
  store i64 0, i64* %23, align 8
  br label %136

136:                                              ; preds = %154, %134
  %137 = load i64, i64* %23, align 8
  %138 = load i64, i64* %24, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %136
  %141 = load i64, i64* %23, align 8
  %142 = getelementptr inbounds [6 x i64], [6 x i64]* %21, i64 0, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load i64, i64* %16, align 8
  %147 = load i64*, i64** %14, align 8
  store i64 %146, i64* %147, align 8
  %148 = load i64, i64* %23, align 8
  %149 = getelementptr inbounds [6 x i64], [6 x i64]* %21, i64 0, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = sub i64 %150, 1
  %152 = load i64*, i64** %15, align 8
  store i64 %151, i64* %152, align 8
  store i32 1, i32* %8, align 4
  br label %158

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %23, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %23, align 8
  br label %136

157:                                              ; preds = %136
  store i32 0, i32* %8, align 4
  br label %158

158:                                              ; preds = %157, %145, %67, %36
  %159 = load i32, i32* %8, align 4
  ret i32 %159
}

declare dso_local i64 @candidates_id_bucket(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @is_timeout(i32, i32) #1

declare dso_local i64 @hash_collide(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
