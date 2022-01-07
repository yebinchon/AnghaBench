; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_write_index.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_write_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.TYPE_14__, i64, %struct.cache_entry** }
%struct.TYPE_14__ = type { i32, i64 }
%struct.cache_entry = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.cache_header = type { i8*, i8*, i8* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.cache_header* }

@CE_REMOVE = common dso_local global i32 0, align 4
@CACHE_SIGNATURE = common dso_local global i32 0, align 4
@G_CHECKSUM_SHA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@CACHE_EXT_MODIFIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_index(%struct.index_state* %0, i32 %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca %struct.cache_header, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_entry**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cache_entry*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.index_state*, %struct.index_state** %3, align 8
  %18 = getelementptr inbounds %struct.index_state, %struct.index_state* %17, i32 0, i32 3
  %19 = load %struct.cache_entry**, %struct.cache_entry*** %18, align 8
  store %struct.cache_entry** %19, %struct.cache_entry*** %10, align 8
  %20 = load %struct.index_state*, %struct.index_state** %3, align 8
  %21 = getelementptr inbounds %struct.index_state, %struct.index_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %23 = call i32 @memset(%struct.TYPE_15__* %5, i32 0, i32 4)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %43, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %29, i64 %31
  %33 = load %struct.cache_entry*, %struct.cache_entry** %32, align 8
  %34 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CE_REMOVE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %28
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load i32, i32* @CACHE_SIGNATURE, align 4
  %48 = call i8* @htonl(i32 %47)
  %49 = getelementptr inbounds %struct.cache_header, %struct.cache_header* %6, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = call i8* @htonl(i32 4)
  %51 = getelementptr inbounds %struct.cache_header, %struct.cache_header* %6, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %52, %53
  %55 = call i8* @htonl(i32 %54)
  %56 = getelementptr inbounds %struct.cache_header, %struct.cache_header* %6, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* @G_CHECKSUM_SHA1, align 4
  %58 = call i32 @g_checksum_new(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i64 @ce_write(%struct.TYPE_15__* %5, i32 %60, %struct.cache_header* %6, i32 24)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  store i32 -1, i32* %13, align 4
  br label %154

64:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %89, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %65
  %70 = load %struct.cache_entry**, %struct.cache_entry*** %10, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %70, i64 %72
  %74 = load %struct.cache_entry*, %struct.cache_entry** %73, align 8
  store %struct.cache_entry* %74, %struct.cache_entry** %14, align 8
  %75 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %76 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CE_REMOVE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %89

82:                                               ; preds = %69
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %85 = call i64 @ce_write_entry2(%struct.TYPE_15__* %5, i32 %83, %struct.cache_entry* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 -1, i32* %13, align 4
  br label %154

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %81
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %65

92:                                               ; preds = %65
  %93 = load %struct.index_state*, %struct.index_state** %3, align 8
  %94 = getelementptr inbounds %struct.index_state, %struct.index_state* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %135

97:                                               ; preds = %92
  %98 = call %struct.TYPE_17__* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_17__* %98, %struct.TYPE_17__** %15, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %100 = load %struct.index_state*, %struct.index_state** %3, align 8
  %101 = call i64 @modifiers_to_string(%struct.TYPE_17__* %99, %struct.index_state* %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %105 = load i32, i32* @TRUE, align 4
  %106 = call i32 @g_string_free(%struct.TYPE_17__* %104, i32 %105)
  store i32 -1, i32* %13, align 4
  br label %154

107:                                              ; preds = %97
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @CACHE_EXT_MODIFIER, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @write_index_ext_header(%struct.TYPE_15__* %5, i32 %108, i32 %109, i32 %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %107
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load %struct.cache_header*, %struct.cache_header** %118, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @ce_write(%struct.TYPE_15__* %5, i32 %116, %struct.cache_header* %119, i32 %122)
  %124 = icmp slt i64 %123, 0
  br label %125

125:                                              ; preds = %115, %107
  %126 = phi i1 [ true, %107 ], [ %124, %115 ]
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %16, align 4
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %129 = load i32, i32* @TRUE, align 4
  %130 = call i32 @g_string_free(%struct.TYPE_17__* %128, i32 %129)
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  store i32 -1, i32* %13, align 4
  br label %154

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %92
  %136 = load i32, i32* %4, align 4
  %137 = call i64 @ce_flush(%struct.TYPE_15__* %5, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %4, align 4
  %141 = call i64 @seaf_fstat(i32 %140, %struct.TYPE_16__* %12)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139, %135
  store i32 -1, i32* %13, align 4
  br label %154

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = load %struct.index_state*, %struct.index_state** %3, align 8
  %149 = getelementptr inbounds %struct.index_state, %struct.index_state* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.index_state*, %struct.index_state** %3, align 8
  %152 = getelementptr inbounds %struct.index_state, %struct.index_state* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %144, %143, %133, %103, %87, %63
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @g_checksum_free(i32 %156)
  %158 = load i32, i32* %13, align 4
  ret i32 %158
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @g_checksum_new(i32) #1

declare dso_local i64 @ce_write(%struct.TYPE_15__*, i32, %struct.cache_header*, i32) #1

declare dso_local i64 @ce_write_entry2(%struct.TYPE_15__*, i32, %struct.cache_entry*) #1

declare dso_local %struct.TYPE_17__* @g_string_new(i8*) #1

declare dso_local i64 @modifiers_to_string(%struct.TYPE_17__*, %struct.index_state*) #1

declare dso_local i32 @g_string_free(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @write_index_ext_header(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i64 @ce_flush(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @seaf_fstat(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @g_checksum_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
