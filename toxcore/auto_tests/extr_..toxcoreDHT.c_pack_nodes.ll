; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_pack_nodes.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_pack_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@TOX_AF_INET = common dso_local global i32 0, align 4
@TCP_INET = common dso_local global i64 0, align 8
@TOX_TCP_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@TOX_AF_INET6 = common dso_local global i32 0, align 4
@TCP_INET6 = common dso_local global i64 0, align 8
@TOX_TCP_INET6 = common dso_local global i32 0, align 4
@PACKED_NODE_SIZE_IP4 = common dso_local global i64 0, align 8
@SIZE_IP4 = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@PACKED_NODE_SIZE_IP6 = common dso_local global i64 0, align 8
@SIZE_IP6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pack_nodes(i32* %0, i64 %1, %struct.TYPE_7__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %193, %4
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %196

20:                                               ; preds = %16
  store i32 -1, i32* %12, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AF_INET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  %31 = load i32, i32* @TOX_AF_INET, align 4
  store i32 %31, i32* %13, align 4
  br label %72

32:                                               ; preds = %20
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TCP_INET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  %43 = load i32, i32* @TOX_TCP_INET, align 4
  store i32 %43, i32* %13, align 4
  br label %71

44:                                               ; preds = %32
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AF_INET6, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  store i32 1, i32* %12, align 4
  %55 = load i32, i32* @TOX_AF_INET6, align 4
  store i32 %55, i32* %13, align 4
  br label %70

56:                                               ; preds = %44
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TCP_INET6, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  store i32 1, i32* %12, align 4
  %67 = load i32, i32* @TOX_TCP_INET6, align 4
  store i32 %67, i32* %13, align 4
  br label %69

68:                                               ; preds = %56
  store i32 -1, i32* %5, align 4
  br label %199

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %42
  br label %72

72:                                               ; preds = %71, %30
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %131

75:                                               ; preds = %72
  %76 = load i64, i64* @PACKED_NODE_SIZE_IP4, align 8
  store i64 %76, i64* %14, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %14, align 8
  %79 = add i64 %77, %78
  %80 = load i64, i64* %7, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 -1, i32* %5, align 4
  br label %199

83:                                               ; preds = %75
  %84 = load i32, i32* %13, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %84, i32* %87, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32, i32* @SIZE_IP4, align 4
  %99 = call i32 @memcpy(i32* %91, i32* %97, i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* @SIZE_IP4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = call i32 @memcpy(i32* %106, i32* %111, i32 8)
  %113 = load i32*, i32** %6, align 8
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* @SIZE_IP4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = getelementptr inbounds i32, i32* %119, i64 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %127 = call i32 @memcpy(i32* %120, i32* %125, i32 %126)
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* %11, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %11, align 8
  br label %192

131:                                              ; preds = %72
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %190

134:                                              ; preds = %131
  %135 = load i64, i64* @PACKED_NODE_SIZE_IP6, align 8
  store i64 %135, i64* %15, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %15, align 8
  %138 = add i64 %136, %137
  %139 = load i64, i64* %7, align 8
  %140 = icmp ugt i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  store i32 -1, i32* %5, align 4
  br label %199

142:                                              ; preds = %134
  %143 = load i32, i32* %13, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32 %143, i32* %146, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %152 = load i64, i64* %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i32, i32* @SIZE_IP6, align 4
  %158 = call i32 @memcpy(i32* %150, i32* %156, i32 %157)
  %159 = load i32*, i32** %6, align 8
  %160 = load i64, i64* %11, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* @SIZE_IP6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %167 = load i64, i64* %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = call i32 @memcpy(i32* %165, i32* %170, i32 8)
  %172 = load i32*, i32** %6, align 8
  %173 = load i64, i64* %11, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* @SIZE_IP6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = getelementptr inbounds i32, i32* %178, i64 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %181 = load i64, i64* %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %186 = call i32 @memcpy(i32* %179, i32* %184, i32 %185)
  %187 = load i64, i64* %15, align 8
  %188 = load i64, i64* %11, align 8
  %189 = add i64 %188, %187
  store i64 %189, i64* %11, align 8
  br label %191

190:                                              ; preds = %131
  store i32 -1, i32* %5, align 4
  br label %199

191:                                              ; preds = %142
  br label %192

192:                                              ; preds = %191, %83
  br label %193

193:                                              ; preds = %192
  %194 = load i64, i64* %10, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %10, align 8
  br label %16

196:                                              ; preds = %16
  %197 = load i64, i64* %11, align 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %196, %190, %141, %82, %68
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
