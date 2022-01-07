; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_checkBlocks.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_checkBlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }

@INTEGRITY_CHECK_USED = common dso_local global i32 0, align 4
@INTEGRITY_CHECK_FIRST_PG = common dso_local global i32 0, align 4
@INTEGRITY_CHECK_LAST_PG = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32, i32, i32*)* @checkBlocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkBlocks(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %197

19:                                               ; preds = %5
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %196

22:                                               ; preds = %19
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %196

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = call i64 @fsSegmentRedirects(i32* %28, %struct.TYPE_5__* %29)
  %31 = icmp eq i64 0, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @fsPageToBlock(i32* %34, i64 %37)
  store i32 %38, i32* %14, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @fsPageToBlock(i32* %39, i64 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @fsLastPageOnBlock(i32* %44, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp sgt i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  br label %56

56:                                               ; preds = %192, %27
  %57 = load i32, i32* @INTEGRITY_CHECK_USED, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %57
  store i32 %64, i32* %62, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @fsFirstPageOnBlock(i32* %65, i32 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %56
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %72, %56
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @INTEGRITY_CHECK_FIRST_PG, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i32, i32* @INTEGRITY_CHECK_FIRST_PG, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %88
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %76, %72
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %100, %96
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @INTEGRITY_CHECK_LAST_PG, align 4
  %111 = and i32 %109, %110
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i32, i32* @INTEGRITY_CHECK_LAST_PG, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %115
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %103, %100
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %176

127:                                              ; preds = %123
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %176

130:                                              ; preds = %127
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %176

133:                                              ; preds = %130
  store i32 0, i32* %16, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @fsBlockNext(i32* %134, %struct.TYPE_5__* %135, i32 %136, i32* %16)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @LSM_OK, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i32, i32* @INTEGRITY_CHECK_USED, align 4
  %153 = load i32*, i32** %10, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %152
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* @INTEGRITY_CHECK_FIRST_PG, align 4
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %160
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* @INTEGRITY_CHECK_LAST_PG, align 4
  %169 = load i32*, i32** %10, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %168
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %133, %130, %127, %123
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store i32 0, i32* %12, align 4
  br label %191

181:                                              ; preds = %176
  %182 = load i32*, i32** %6, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @fsBlockNext(i32* %182, %struct.TYPE_5__* %183, i32 %184, i32* %12)
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* @LSM_OK, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  br label %191

191:                                              ; preds = %181, %180
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %56, label %195

195:                                              ; preds = %192
  br label %196

196:                                              ; preds = %195, %22, %19
  br label %197

197:                                              ; preds = %196, %5
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fsSegmentRedirects(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @fsPageToBlock(i32*, i64) #1

declare dso_local i64 @fsLastPageOnBlock(i32*, i32) #1

declare dso_local i64 @fsFirstPageOnBlock(i32*, i32) #1

declare dso_local i32 @fsBlockNext(i32*, %struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
