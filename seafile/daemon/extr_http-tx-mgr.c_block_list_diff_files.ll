; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_block_list_diff_files.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_block_list_diff_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32* }

@EMPTY_SHA1 = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Failed to get seafile object %s:%s.\0A\00", align 1
@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.TYPE_10__**, i8*)* @block_list_diff_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_list_diff_files(i32 %0, i8* %1, %struct.TYPE_10__** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %19, i64 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %10, align 8
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %22, i64 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %11, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %12, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %15, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %32, label %220

32:                                               ; preds = %4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EMPTY_SHA1, align 4
  %37 = call i64 @strcmp(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %220

39:                                               ; preds = %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %93, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_9__* @seaf_fs_manager_get_seafile(i32 %45, i32 %48, i32 %51, i32 %54)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %14, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %42
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @seaf_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  store i32 -1, i32* %5, align 4
  br label %221

66:                                               ; preds = %42
  store i32 0, i32* %16, align 4
  br label %67

67:                                               ; preds = %87, %66
  %68 = load i32, i32* %16, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @add_to_block_list(i32* %75, i32 %78, i32 %85)
  br label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %92 = call i32 @seafile_unref(%struct.TYPE_9__* %91)
  br label %219

93:                                               ; preds = %39
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @strcmp(i32 %96, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %218

102:                                              ; preds = %93
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.TYPE_9__* @seaf_fs_manager_get_seafile(i32 %105, i32 %108, i32 %111, i32 %114)
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %14, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %117 = icmp ne %struct.TYPE_9__* %116, null
  br i1 %117, label %126, label %118

118:                                              ; preds = %102
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @seaf_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %124)
  store i32 -1, i32* %5, align 4
  br label %221

126:                                              ; preds = %102
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call %struct.TYPE_9__* @seaf_fs_manager_get_seafile(i32 %129, i32 %132, i32 %135, i32 %138)
  store %struct.TYPE_9__* %139, %struct.TYPE_9__** %15, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %141 = icmp ne %struct.TYPE_9__* %140, null
  br i1 %141, label %152, label %142

142:                                              ; preds = %126
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %144 = call i32 @seafile_unref(%struct.TYPE_9__* %143)
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @seaf_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %147, i32 %150)
  store i32 -1, i32* %5, align 4
  br label %221

152:                                              ; preds = %126
  %153 = load i32, i32* @g_str_hash, align 4
  %154 = load i32, i32* @g_str_equal, align 4
  %155 = call i32* @g_hash_table_new(i32 %153, i32 %154)
  store i32* %155, i32** %17, align 8
  store i32 0, i32* %16, align 4
  br label %156

156:                                              ; preds = %172, %152
  %157 = load i32, i32* %16, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %156
  %163 = load i32*, i32** %17, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %16, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @g_hash_table_insert(i32* %163, i32 %170, i32* %18)
  br label %172

172:                                              ; preds = %162
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %16, align 4
  br label %156

175:                                              ; preds = %156
  store i32 0, i32* %16, align 4
  br label %176

176:                                              ; preds = %208, %175
  %177 = load i32, i32* %16, align 4
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %211

182:                                              ; preds = %176
  %183 = load i32*, i32** %17, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @g_hash_table_lookup(i32* %183, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %207, label %193

193:                                              ; preds = %182
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %16, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @add_to_block_list(i32* %195, i32 %198, i32 %205)
  br label %207

207:                                              ; preds = %193, %182
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %16, align 4
  br label %176

211:                                              ; preds = %176
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %213 = call i32 @seafile_unref(%struct.TYPE_9__* %212)
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %215 = call i32 @seafile_unref(%struct.TYPE_9__* %214)
  %216 = load i32*, i32** %17, align 8
  %217 = call i32 @g_hash_table_destroy(i32* %216)
  br label %218

218:                                              ; preds = %211, %93
  br label %219

219:                                              ; preds = %218, %90
  br label %220

220:                                              ; preds = %219, %32, %4
  store i32 0, i32* %5, align 4
  br label %221

221:                                              ; preds = %220, %142, %118, %58
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_9__* @seaf_fs_manager_get_seafile(i32, i32, i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32, i32) #1

declare dso_local i32 @add_to_block_list(i32*, i32, i32) #1

declare dso_local i32 @seafile_unref(%struct.TYPE_9__*) #1

declare dso_local i32* @g_hash_table_new(i32, i32) #1

declare dso_local i32 @g_hash_table_insert(i32*, i32, i32*) #1

declare dso_local i32 @g_hash_table_lookup(i32*, i32) #1

declare dso_local i32 @g_hash_table_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
