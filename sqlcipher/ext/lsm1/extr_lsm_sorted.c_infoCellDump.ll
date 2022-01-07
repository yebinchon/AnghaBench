; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_infoCellDump.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_infoCellDump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"<indirect>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32*, i32*, i32**, i32*, i32**, i32*, %struct.TYPE_8__*)* @infoCellDump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @infoCellDump(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32* %6, i32** %7, i32* %8, i32** %9, i32* %10, %struct.TYPE_8__* %11) #0 {
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_8__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32** %7, i32*** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32** %9, i32*** %22, align 8
  store i32* %10, i32** %23, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %24, align 8
  store i32 0, i32* %28, align 4
  store i32* null, i32** %29, align 8
  store i32 0, i32* %30, align 4
  store i32* null, i32** %33, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call i32* @fsPageData(i32* %37, i32* %26)
  store i32* %38, i32** %25, align 8
  %39 = load i32*, i32** %25, align 8
  %40 = load i32, i32* %26, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32* @pageGetCell(i32* %39, i32 %40, i32 %41)
  store i32* %42, i32** %34, align 8
  %43 = load i32*, i32** %34, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %34, align 8
  %45 = load i32, i32* %43, align 4
  store i32 %45, i32* %31, align 4
  %46 = load i32*, i32** %34, align 8
  %47 = call i32 @lsmVarintGet32(i32* %46, i32* %32)
  %48 = load i32*, i32** %34, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %34, align 8
  %51 = load i32, i32* %31, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %12
  %54 = load i32*, i32** %34, align 8
  %55 = call i32 @lsmVarintGet64(i32* %54, i32* %36)
  %56 = load i32*, i32** %34, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %34, align 8
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %53
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = load i32, i32* %36, align 4
  %67 = call i32 @lsmFsDbPageGet(i32 %64, i32* %65, i32 %66, i32** %33)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = load i32*, i32** %33, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %74 = call i32 @pageGetKeyCopy(i32 %70, i32* %71, i32* %72, i32 0, i32* %35, %struct.TYPE_8__* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %27, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %28, align 4
  %82 = load i32*, i32** %33, align 8
  %83 = call i32 @lsmFsPageRelease(i32* %82)
  br label %85

84:                                               ; preds = %53
  store i32* bitcast ([11 x i8]* @.str to i32*), i32** %27, align 8
  store i32 11, i32* %28, align 4
  br label %85

85:                                               ; preds = %84, %61
  br label %121

86:                                               ; preds = %12
  %87 = load i32*, i32** %34, align 8
  %88 = call i32 @lsmVarintGet32(i32* %87, i32* %28)
  %89 = load i32*, i32** %34, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %34, align 8
  %92 = load i32, i32* %31, align 4
  %93 = call i64 @rtIsWrite(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %86
  %96 = load i32*, i32** %34, align 8
  %97 = call i32 @lsmVarintGet32(i32* %96, i32* %30)
  %98 = load i32*, i32** %34, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %34, align 8
  br label %101

101:                                              ; preds = %95, %86
  %102 = load i32*, i32** %14, align 8
  %103 = load i32*, i32** %16, align 8
  %104 = load i32*, i32** %34, align 8
  %105 = load i32*, i32** %25, align 8
  %106 = ptrtoint i32* %104 to i64
  %107 = ptrtoint i32* %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = load i32, i32* %28, align 4
  %112 = load i32, i32* %30, align 4
  %113 = add nsw i32 %111, %112
  %114 = bitcast i32** %27 to i8**
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %116 = call i32 @sortedReadData(i32* %102, i32* %103, i32 %110, i32 %113, i8** %114, %struct.TYPE_8__* %115)
  %117 = load i32*, i32** %27, align 8
  %118 = load i32, i32* %28, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32* %120, i32** %29, align 8
  br label %121

121:                                              ; preds = %101, %85
  %122 = load i32*, i32** %18, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %31, align 4
  %126 = load i32*, i32** %18, align 8
  store i32 %125, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32*, i32** %19, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %32, align 4
  %132 = load i32*, i32** %19, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i32**, i32*** %20, align 8
  %135 = icmp ne i32** %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32*, i32** %27, align 8
  %138 = load i32**, i32*** %20, align 8
  store i32* %137, i32** %138, align 8
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32**, i32*** %22, align 8
  %141 = icmp ne i32** %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32*, i32** %29, align 8
  %144 = load i32**, i32*** %22, align 8
  store i32* %143, i32** %144, align 8
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32*, i32** %21, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* %28, align 4
  %150 = load i32*, i32** %21, align 8
  store i32 %149, i32* %150, align 4
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32*, i32** %23, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %30, align 4
  %156 = load i32*, i32** %23, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %151
  ret void
}

declare dso_local i32* @fsPageData(i32*, i32*) #1

declare dso_local i32* @pageGetCell(i32*, i32, i32) #1

declare dso_local i32 @lsmVarintGet32(i32*, i32*) #1

declare dso_local i32 @lsmVarintGet64(i32*, i32*) #1

declare dso_local i32 @lsmFsDbPageGet(i32, i32*, i32, i32**) #1

declare dso_local i32 @pageGetKeyCopy(i32, i32*, i32*, i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @lsmFsPageRelease(i32*) #1

declare dso_local i64 @rtIsWrite(i32) #1

declare dso_local i32 @sortedReadData(i32*, i32*, i32, i32, i8**, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
