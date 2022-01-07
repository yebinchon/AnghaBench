; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_dump_filesystems.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_dump_filesystems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"snapprops\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"is_clone_origin\00", align 1
@B_FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"sent\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"parentfromsnap\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*)* @dump_filesystems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_filesystems(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %6, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = call i32 @dump_filesystem(%struct.TYPE_8__* %31, %struct.TYPE_9__* %32)
  store i32 %33, i32* %3, align 4
  br label %209

34:                                               ; preds = %2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @nvlist_next_nvpair(i32 %37, i32* null)
  store i32* %38, i32** %7, align 8
  br label %39

39:                                               ; preds = %79, %34
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %85

42:                                               ; preds = %39
  store i64 0, i64* %11, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @nvpair_value_nvlist(i32* %43, i32** %10)
  %45 = icmp eq i64 0, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @VERIFY(i32 %46)
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @nvlist_lookup_uint64(i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %11)
  %50 = load i64, i64* %11, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %42
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %11, align 8
  %57 = call i32* @fsavl_find(i32 %55, i64 %56, i8** %12)
  store i32* %57, i32** %13, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %52
  %61 = load i32*, i32** %13, align 8
  %62 = call i64 @nvlist_lookup_nvlist(i32* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32** %14)
  %63 = icmp eq i64 0, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @VERIFY(i32 %64)
  %66 = load i32*, i32** %14, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = call i64 @nvlist_lookup_nvlist(i32* %66, i8* %67, i32** %14)
  %69 = icmp eq i64 0, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @VERIFY(i32 %70)
  %72 = load i32*, i32** %14, align 8
  %73 = call i64 @nvlist_add_boolean(i32* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp eq i64 0, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @VERIFY(i32 %75)
  br label %77

77:                                               ; preds = %60, %52
  br label %78

78:                                               ; preds = %77, %42
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = call i32* @nvlist_next_nvpair(i32 %82, i32* %83)
  store i32* %84, i32** %7, align 8
  br label %39

85:                                               ; preds = %39
  br label %86

86:                                               ; preds = %183, %85
  %87 = load i64, i64* @B_FALSE, align 8
  store i64 %87, i64* %9, align 8
  store i64 %87, i64* %8, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32* @nvlist_next_nvpair(i32 %90, i32* null)
  store i32* %91, i32** %7, align 8
  br label %92

92:                                               ; preds = %174, %86
  %93 = load i32*, i32** %7, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %180

95:                                               ; preds = %92
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i64 @nvpair_value_nvlist(i32* %96, i32** %15)
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @VERIFY(i32 %99)
  %101 = load i32*, i32** %15, align 8
  %102 = call i64 @nvlist_lookup_boolean(i32* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %174

105:                                              ; preds = %95
  %106 = load i32*, i32** %15, align 8
  %107 = call i64 @nvlist_lookup_string(i32* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %17)
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @VERIFY(i32 %109)
  %111 = load i32*, i32** %15, align 8
  %112 = call i32 @nvlist_lookup_uint64(i32* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %20)
  %113 = load i32*, i32** %15, align 8
  %114 = call i32 @nvlist_lookup_uint64(i32* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64* %21)
  %115 = load i64, i64* %21, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %105
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* %21, align 8
  %122 = call i32* @fsavl_find(i32 %120, i64 %121, i8** null)
  store i32* %122, i32** %16, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = call i32 @nvlist_exists(i32* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %117
  %127 = load i64, i64* @B_TRUE, align 8
  store i64 %127, i64* %8, align 8
  br label %174

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %105
  %130 = load i64, i64* %20, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %20, align 8
  %137 = call i32* @fsavl_find(i32 %135, i64 %136, i8** null)
  store i32* %137, i32** %22, align 8
  %138 = load i32*, i32** %22, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load i32*, i32** %22, align 8
  %142 = call i32 @nvlist_exists(i32* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = load i64, i64* @B_TRUE, align 8
  store i64 %145, i64* %8, align 8
  br label %174

146:                                              ; preds = %140, %132
  br label %147

147:                                              ; preds = %146, %129
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i8*, i8** %17, align 8
  %152 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %153 = call %struct.TYPE_8__* @zfs_open(i32 %150, i8* %151, i32 %152)
  store %struct.TYPE_8__* %153, %struct.TYPE_8__** %18, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %155 = icmp eq %struct.TYPE_8__* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  store i32 -1, i32* %3, align 4
  br label %209

157:                                              ; preds = %147
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %160 = call i32 @dump_filesystem(%struct.TYPE_8__* %158, %struct.TYPE_9__* %159)
  store i32 %160, i32* %19, align 4
  %161 = load i32*, i32** %15, align 8
  %162 = call i64 @nvlist_add_boolean(i32* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %163 = icmp eq i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @VERIFY(i32 %164)
  %166 = load i64, i64* @B_TRUE, align 8
  store i64 %166, i64* %9, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %168 = call i32 @zfs_close(%struct.TYPE_8__* %167)
  %169 = load i32, i32* %19, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %157
  %172 = load i32, i32* %19, align 4
  store i32 %172, i32* %3, align 4
  br label %209

173:                                              ; preds = %157
  br label %174

174:                                              ; preds = %173, %144, %126, %104
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %7, align 8
  %179 = call i32* @nvlist_next_nvpair(i32 %177, i32* %178)
  store i32* %179, i32** %7, align 8
  br label %92

180:                                              ; preds = %92
  %181 = load i64, i64* %8, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i64, i64* %9, align 8
  %185 = call i32 @assert(i64 %184)
  br label %86

186:                                              ; preds = %180
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32* @nvlist_next_nvpair(i32 %189, i32* null)
  store i32* %190, i32** %7, align 8
  br label %191

191:                                              ; preds = %202, %186
  %192 = load i32*, i32** %7, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %208

194:                                              ; preds = %191
  %195 = load i32*, i32** %7, align 8
  %196 = call i64 @nvpair_value_nvlist(i32* %195, i32** %23)
  %197 = icmp eq i64 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 @VERIFY(i32 %198)
  %200 = load i32*, i32** %23, align 8
  %201 = call i32 @nvlist_remove_all(i32* %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %202

202:                                              ; preds = %194
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %7, align 8
  %207 = call i32* @nvlist_next_nvpair(i32 %205, i32* %206)
  store i32* %207, i32** %7, align 8
  br label %191

208:                                              ; preds = %191
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %208, %171, %156, %30
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @dump_filesystem(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32* @nvlist_next_nvpair(i32, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i8*, i64*) #1

declare dso_local i32* @fsavl_find(i32, i64, i8**) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i64 @nvlist_add_boolean(i32*, i8*) #1

declare dso_local i64 @nvlist_lookup_boolean(i32*, i8*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

declare dso_local %struct.TYPE_8__* @zfs_open(i32, i8*, i32) #1

declare dso_local i32 @zfs_close(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @nvlist_remove_all(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
