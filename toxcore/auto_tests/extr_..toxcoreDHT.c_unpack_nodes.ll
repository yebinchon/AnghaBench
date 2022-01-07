; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_unpack_nodes.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_unpack_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32 }

@TOX_AF_INET = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@TOX_TCP_INET = common dso_local global i64 0, align 8
@TCP_INET = common dso_local global i64 0, align 8
@TOX_AF_INET6 = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@TOX_TCP_INET6 = common dso_local global i64 0, align 8
@TCP_INET6 = common dso_local global i64 0, align 8
@PACKED_NODE_SIZE_IP4 = common dso_local global i64 0, align 8
@SIZE_IP4 = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@PACKED_NODE_SIZE_IP6 = common dso_local global i64 0, align 8
@SIZE_IP6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unpack_nodes(%struct.TYPE_7__* %0, i64 %1, i64* %2, i64* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %20

20:                                               ; preds = %208, %6
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ult i64 %25, %26
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  br i1 %29, label %30, label %209

30:                                               ; preds = %28
  store i32 -1, i32* %16, align 4
  %31 = load i64*, i64** %11, align 8
  %32 = load i64, i64* %15, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TOX_AF_INET, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  store i32 0, i32* %16, align 4
  %38 = load i64, i64* @AF_INET, align 8
  store i64 %38, i64* %17, align 8
  br label %78

39:                                               ; preds = %30
  %40 = load i64*, i64** %11, align 8
  %41 = load i64, i64* %15, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TOX_TCP_INET, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i64, i64* %13, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 -1, i32* %7, align 4
  br label %218

50:                                               ; preds = %46
  store i32 0, i32* %16, align 4
  %51 = load i64, i64* @TCP_INET, align 8
  store i64 %51, i64* %17, align 8
  br label %77

52:                                               ; preds = %39
  %53 = load i64*, i64** %11, align 8
  %54 = load i64, i64* %15, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TOX_AF_INET6, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  store i32 1, i32* %16, align 4
  %60 = load i64, i64* @AF_INET6, align 8
  store i64 %60, i64* %17, align 8
  br label %76

61:                                               ; preds = %52
  %62 = load i64*, i64** %11, align 8
  %63 = load i64, i64* %15, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TOX_TCP_INET6, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i64, i64* %13, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store i32 -1, i32* %7, align 4
  br label %218

72:                                               ; preds = %68
  store i32 1, i32* %16, align 4
  %73 = load i64, i64* @TCP_INET6, align 8
  store i64 %73, i64* %17, align 8
  br label %75

74:                                               ; preds = %61
  store i32 -1, i32* %7, align 4
  br label %218

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %50
  br label %78

78:                                               ; preds = %77, %37
  %79 = load i32, i32* %16, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %142

81:                                               ; preds = %78
  %82 = load i64, i64* @PACKED_NODE_SIZE_IP4, align 8
  store i64 %82, i64* %18, align 8
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %18, align 8
  %85 = add i64 %83, %84
  %86 = load i64, i64* %12, align 8
  %87 = icmp ugt i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 -1, i32* %7, align 4
  br label %218

89:                                               ; preds = %81
  %90 = load i64, i64* %17, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i64 %90, i64* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = load i64, i64* %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i64*, i64** %11, align 8
  %104 = load i64, i64* %15, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i32, i32* @SIZE_IP4, align 4
  %108 = call i32 @memcpy(i32* %102, i64* %106, i32 %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = load i64, i64* %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64*, i64** %11, align 8
  %115 = load i64, i64* %15, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = getelementptr inbounds i64, i64* %116, i64 1
  %118 = load i32, i32* @SIZE_IP4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = call i32 @memcpy(i32* %113, i64* %120, i32 8)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %123 = load i64, i64* %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64*, i64** %11, align 8
  %128 = load i64, i64* %15, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  %131 = load i32, i32* @SIZE_IP4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = getelementptr inbounds i64, i64* %133, i64 8
  %135 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %136 = call i32 @memcpy(i32* %126, i64* %134, i32 %135)
  %137 = load i64, i64* %18, align 8
  %138 = load i64, i64* %15, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %15, align 8
  %140 = load i64, i64* %14, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %14, align 8
  br label %208

142:                                              ; preds = %78
  %143 = load i32, i32* %16, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %206

145:                                              ; preds = %142
  %146 = load i64, i64* @PACKED_NODE_SIZE_IP6, align 8
  store i64 %146, i64* %19, align 8
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* %19, align 8
  %149 = add i64 %147, %148
  %150 = load i64, i64* %12, align 8
  %151 = icmp ugt i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  store i32 -1, i32* %7, align 4
  br label %218

153:                                              ; preds = %145
  %154 = load i64, i64* %17, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %156 = load i64, i64* %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  store i64 %154, i64* %160, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i64*, i64** %11, align 8
  %168 = load i64, i64* %15, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = getelementptr inbounds i64, i64* %169, i64 1
  %171 = load i32, i32* @SIZE_IP6, align 4
  %172 = call i32 @memcpy(i32* %166, i64* %170, i32 %171)
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %174 = load i64, i64* %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i64*, i64** %11, align 8
  %179 = load i64, i64* %15, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = getelementptr inbounds i64, i64* %180, i64 1
  %182 = load i32, i32* @SIZE_IP6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = call i32 @memcpy(i32* %177, i64* %184, i32 8)
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %187 = load i64, i64* %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i64*, i64** %11, align 8
  %192 = load i64, i64* %15, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = getelementptr inbounds i64, i64* %193, i64 1
  %195 = load i32, i32* @SIZE_IP6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = getelementptr inbounds i64, i64* %197, i64 8
  %199 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %200 = call i32 @memcpy(i32* %190, i64* %198, i32 %199)
  %201 = load i64, i64* %19, align 8
  %202 = load i64, i64* %15, align 8
  %203 = add i64 %202, %201
  store i64 %203, i64* %15, align 8
  %204 = load i64, i64* %14, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %14, align 8
  br label %207

206:                                              ; preds = %142
  store i32 -1, i32* %7, align 4
  br label %218

207:                                              ; preds = %153
  br label %208

208:                                              ; preds = %207, %89
  br label %20

209:                                              ; preds = %28
  %210 = load i64*, i64** %10, align 8
  %211 = icmp ne i64* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load i64, i64* %15, align 8
  %214 = load i64*, i64** %10, align 8
  store i64 %213, i64* %214, align 8
  br label %215

215:                                              ; preds = %212, %209
  %216 = load i64, i64* %14, align 8
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %7, align 4
  br label %218

218:                                              ; preds = %215, %206, %152, %88, %74, %71, %49
  %219 = load i32, i32* %7, align 4
  ret i32 %219
}

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
