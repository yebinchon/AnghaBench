; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_pstcache.c_pstcache_enumerate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_pstcache.c_pstcache_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Persistent bitmap cache enumeration... \00", align 1
@BMPCACHE2_NUM_PSTCELLS = common dso_local global i32 0, align 4
@MAX_CELL_SIZE = common dso_local global i32 0, align 4
@zero_key = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%d cached bitmaps.\0A\00", align 1
@True = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pstcache_enumerate(%struct.TYPE_7__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2560 x i32], align 16
  %12 = alloca [2560 x i64], align 16
  %13 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @IS_PERSISTENT(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %18, %3
  store i32 0, i32* %4, align 4
  br label %162

28:                                               ; preds = %23
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %162

34:                                               ; preds = %28
  %35 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %145, %34
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @BMPCACHE2_NUM_PSTCELLS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %148

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MAX_CELL_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 16
  %57 = mul i64 %49, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @rd_lseek_file(i32 %47, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @rd_read_file(i32 %60, %struct.TYPE_8__* %13, i32 16)
  %62 = icmp sle i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %40
  br label %148

64:                                               ; preds = %40
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @zero_key, align 4
  %68 = call i64 @memcmp(i32 %66, i32 %67, i32 4)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %143

70:                                               ; preds = %64
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @memcpy(i32 %75, i32 %77, i32 4)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 8
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @pstcache_load_bitmap(%struct.TYPE_7__* %93, i64 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %87, %83, %70
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %130, %97
  %100 = load i32, i32* %9, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [2560 x i64], [2560 x i64]* %12, i64 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %104, %109
  br label %111

111:                                              ; preds = %102, %99
  %112 = phi i1 [ false, %99 ], [ %110, %102 ]
  br i1 %112, label %113, label %133

113:                                              ; preds = %111
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [2560 x i32], [2560 x i32]* %11, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2560 x i32], [2560 x i32]* %11, i64 0, i64 %120
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* %9, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [2560 x i64], [2560 x i64]* %12, i64 0, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2560 x i64], [2560 x i64]* %12, i64 0, i64 %128
  store i64 %126, i64* %129, align 8
  br label %130

130:                                              ; preds = %113
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %9, align 4
  br label %99

133:                                              ; preds = %111
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [2560 x i32], [2560 x i32]* %11, i64 0, i64 %136
  store i32 %134, i32* %137, align 4
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [2560 x i64], [2560 x i64]* %12, i64 0, i64 %141
  store i64 %139, i64* %142, align 8
  br label %144

143:                                              ; preds = %64
  br label %148

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %36

148:                                              ; preds = %143, %63, %36
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = call i32 @DEBUG_RDP5(i8* %151)
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %154 = load i64, i64* %6, align 8
  %155 = getelementptr inbounds [2560 x i32], [2560 x i32]* %11, i64 0, i64 0
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @cache_rebuild_bmpcache_linked_list(%struct.TYPE_7__* %153, i64 %154, i32* %155, i32 %156)
  %158 = load i64, i64* @True, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 3
  store i64 %158, i64* %160, align 8
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %148, %33, %27
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i64 @IS_PERSISTENT(i64) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i32 @rd_lseek_file(i32, i32) #1

declare dso_local i64 @rd_read_file(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pstcache_load_bitmap(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @cache_rebuild_bmpcache_linked_list(%struct.TYPE_7__*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
