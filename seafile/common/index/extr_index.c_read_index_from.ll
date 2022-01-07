; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_read_index_from.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_read_index_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.cache_header = type { i32, i32 }
%struct.ondisk_cache_entry = type { i32 }
%struct.ondisk_cache_entry2 = type { i32 }
%struct.cache_entry = type { i32 }
%struct.cache_ext_hdr = type { i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"index file open failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot stat the open index\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"index file smaller than expected\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to map index file\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"index file corrupt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_index_from(%struct.index_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cache_header*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ondisk_cache_entry*, align 8
  %16 = alloca %struct.ondisk_cache_entry2*, align 8
  %17 = alloca %struct.cache_entry*, align 8
  %18 = alloca %struct.cache_ext_hdr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.index_state*, %struct.index_state** %5, align 8
  %22 = getelementptr inbounds %struct.index_state, %struct.index_state* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.index_state*, %struct.index_state** %5, align 8
  %27 = getelementptr inbounds %struct.index_state, %struct.index_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  br label %223

29:                                               ; preds = %3
  %30 = load %struct.index_state*, %struct.index_state** %5, align 8
  %31 = getelementptr inbounds %struct.index_state, %struct.index_state* %30, i32 0, i32 1
  store i32 4, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.index_state*, %struct.index_state** %5, align 8
  %36 = getelementptr inbounds %struct.index_state, %struct.index_state* %35, i32 0, i32 2
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.index_state*, %struct.index_state** %5, align 8
  %39 = getelementptr inbounds %struct.index_state, %struct.index_state* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.index_state*, %struct.index_state** %5, align 8
  %42 = getelementptr inbounds %struct.index_state, %struct.index_state* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @O_RDONLY, align 4
  %46 = load i32, i32* @O_BINARY, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @seaf_util_open(i8* %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %37
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @ENOENT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.index_state*, %struct.index_state** %5, align 8
  %57 = call i32 @alloc_index(%struct.index_state* %56)
  store i32 0, i32* %4, align 4
  br label %223

58:                                               ; preds = %51
  %59 = call i32 @g_critical(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %223

60:                                               ; preds = %37
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @seaf_fstat(i32 %61, %struct.TYPE_5__* %10)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = call i32 @g_critical(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @close(i32 %66)
  store i32 -1, i32* %4, align 4
  br label %223

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp ult i64 %71, 28
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = call i32 @g_critical(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @close(i32 %75)
  store i32 -1, i32* %4, align 4
  br label %223

77:                                               ; preds = %68
  %78 = load i64, i64* %14, align 8
  %79 = load i32, i32* @PROT_READ, align 4
  %80 = load i32, i32* @PROT_WRITE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @MAP_PRIVATE, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i8* @mmap(i32* null, i64 %78, i32 %81, i32 %82, i32 %83, i32 0)
  store i8* %84, i8** %13, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @close(i32 %85)
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** @MAP_FAILED, align 8
  %89 = icmp eq i8* %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = call i32 @g_critical(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %223

92:                                               ; preds = %77
  %93 = load i8*, i8** %13, align 8
  %94 = bitcast i8* %93 to %struct.cache_header*
  store %struct.cache_header* %94, %struct.cache_header** %12, align 8
  %95 = load %struct.cache_header*, %struct.cache_header** %12, align 8
  %96 = load i64, i64* %14, align 8
  %97 = call i64 @verify_hdr(%struct.cache_header* %95, i64 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %218

100:                                              ; preds = %92
  %101 = load %struct.cache_header*, %struct.cache_header** %12, align 8
  %102 = getelementptr inbounds %struct.cache_header, %struct.cache_header* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @ntohl(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.index_state*, %struct.index_state** %5, align 8
  %107 = getelementptr inbounds %struct.index_state, %struct.index_state* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.cache_header*, %struct.cache_header** %12, align 8
  %109 = getelementptr inbounds %struct.cache_header, %struct.cache_header* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @ntohl(i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.index_state*, %struct.index_state** %5, align 8
  %114 = getelementptr inbounds %struct.index_state, %struct.index_state* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.index_state*, %struct.index_state** %5, align 8
  %116 = call i32 @alloc_index(%struct.index_state* %115)
  store i64 8, i64* %11, align 8
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %161, %100
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.index_state*, %struct.index_state** %5, align 8
  %120 = getelementptr inbounds %struct.index_state, %struct.index_state* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %164

123:                                              ; preds = %117
  %124 = load %struct.index_state*, %struct.index_state** %5, align 8
  %125 = getelementptr inbounds %struct.index_state, %struct.index_state* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %126, 4
  br i1 %127, label %128, label %142

128:                                              ; preds = %123
  %129 = load i8*, i8** %13, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = bitcast i8* %131 to %struct.ondisk_cache_entry*
  store %struct.ondisk_cache_entry* %132, %struct.ondisk_cache_entry** %15, align 8
  %133 = load %struct.ondisk_cache_entry*, %struct.ondisk_cache_entry** %15, align 8
  %134 = call i64 @convert_from_disk(%struct.ondisk_cache_entry* %133, %struct.cache_entry** %17)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 -1, i32* %4, align 4
  br label %223

137:                                              ; preds = %128
  %138 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %139 = call i64 @ondisk_ce_size(%struct.cache_entry* %138)
  %140 = load i64, i64* %11, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %11, align 8
  br label %156

142:                                              ; preds = %123
  %143 = load i8*, i8** %13, align 8
  %144 = load i64, i64* %11, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = bitcast i8* %145 to %struct.ondisk_cache_entry2*
  store %struct.ondisk_cache_entry2* %146, %struct.ondisk_cache_entry2** %16, align 8
  %147 = load %struct.ondisk_cache_entry2*, %struct.ondisk_cache_entry2** %16, align 8
  %148 = call i64 @convert_from_disk2(%struct.ondisk_cache_entry2* %147, %struct.cache_entry** %17)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  store i32 -1, i32* %4, align 4
  br label %223

151:                                              ; preds = %142
  %152 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %153 = call i64 @ondisk_ce_size2(%struct.cache_entry* %152)
  %154 = load i64, i64* %11, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %11, align 8
  br label %156

156:                                              ; preds = %151, %137
  %157 = load %struct.index_state*, %struct.index_state** %5, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %160 = call i32 @set_index_entry(%struct.index_state* %157, i32 %158, %struct.cache_entry* %159)
  br label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %117

164:                                              ; preds = %117
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.index_state*, %struct.index_state** %5, align 8
  %168 = getelementptr inbounds %struct.index_state, %struct.index_state* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i64 %166, i64* %169, align 8
  %170 = load %struct.index_state*, %struct.index_state** %5, align 8
  %171 = getelementptr inbounds %struct.index_state, %struct.index_state* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  store i64 0, i64* %172, align 8
  br label %173

173:                                              ; preds = %204, %164
  %174 = load i64, i64* %11, align 8
  %175 = load i64, i64* %14, align 8
  %176 = sub i64 %175, 20
  %177 = sub i64 %176, 8
  %178 = icmp ule i64 %174, %177
  br i1 %178, label %179, label %211

179:                                              ; preds = %173
  %180 = load i8*, i8** %13, align 8
  %181 = load i64, i64* %11, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  %183 = bitcast i8* %182 to %struct.cache_ext_hdr*
  store %struct.cache_ext_hdr* %183, %struct.cache_ext_hdr** %18, align 8
  %184 = load %struct.cache_ext_hdr*, %struct.cache_ext_hdr** %18, align 8
  %185 = getelementptr inbounds %struct.cache_ext_hdr, %struct.cache_ext_hdr* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @ntohl(i32 %186)
  %188 = ptrtoint i8* %187 to i32
  store i32 %188, i32* %19, align 4
  %189 = load %struct.cache_ext_hdr*, %struct.cache_ext_hdr** %18, align 8
  %190 = getelementptr inbounds %struct.cache_ext_hdr, %struct.cache_ext_hdr* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @ntohl(i32 %191)
  %193 = ptrtoint i8* %192 to i32
  store i32 %193, i32* %20, align 4
  %194 = load %struct.index_state*, %struct.index_state** %5, align 8
  %195 = load i32, i32* %19, align 4
  %196 = load i8*, i8** %13, align 8
  %197 = load i64, i64* %11, align 8
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  %199 = getelementptr inbounds i8, i8* %198, i64 8
  %200 = load i32, i32* %20, align 4
  %201 = call i64 @read_index_extension(%struct.index_state* %194, i32 %195, i8* %199, i32 %200)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %179
  br label %218

204:                                              ; preds = %179
  %205 = load i64, i64* %11, align 8
  %206 = add i64 %205, 8
  store i64 %206, i64* %11, align 8
  %207 = load i32, i32* %20, align 4
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %11, align 8
  %210 = add i64 %209, %208
  store i64 %210, i64* %11, align 8
  br label %173

211:                                              ; preds = %173
  %212 = load i8*, i8** %13, align 8
  %213 = load i64, i64* %14, align 8
  %214 = call i32 @munmap(i8* %212, i64 %213)
  %215 = load %struct.index_state*, %struct.index_state** %5, align 8
  %216 = getelementptr inbounds %struct.index_state, %struct.index_state* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  store i32 %217, i32* %4, align 4
  br label %223

218:                                              ; preds = %203, %99
  %219 = load i8*, i8** %13, align 8
  %220 = load i64, i64* %14, align 8
  %221 = call i32 @munmap(i8* %219, i64 %220)
  %222 = call i32 @g_critical(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %223

223:                                              ; preds = %218, %211, %150, %136, %90, %73, %64, %58, %55, %25
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local i32 @seaf_util_open(i8*, i32) #1

declare dso_local i32 @alloc_index(%struct.index_state*) #1

declare dso_local i32 @g_critical(i8*) #1

declare dso_local i64 @seaf_fstat(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @verify_hdr(%struct.cache_header*, i64) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i64 @convert_from_disk(%struct.ondisk_cache_entry*, %struct.cache_entry**) #1

declare dso_local i64 @ondisk_ce_size(%struct.cache_entry*) #1

declare dso_local i64 @convert_from_disk2(%struct.ondisk_cache_entry2*, %struct.cache_entry**) #1

declare dso_local i64 @ondisk_ce_size2(%struct.cache_entry*) #1

declare dso_local i32 @set_index_entry(%struct.index_state*, i32, %struct.cache_entry*) #1

declare dso_local i64 @read_index_extension(%struct.index_state*, i32, i8*, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
