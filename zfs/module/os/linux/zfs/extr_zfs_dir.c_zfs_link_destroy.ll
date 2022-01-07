; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_link_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_dir.c_zfs_link_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@B_FALSE = common dso_local global i8* null, align 8
@ZRENAMING = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"zfs: link count on %lu is %u, should be at least %u\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@STATE_CHANGED = common dso_local global i32 0, align 4
@CONTENT_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_link_destroy(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i32* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [5 x i32], align 16
  %17 = alloca [2 x i32], align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %12, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %26 = call i32* @ZTOZSB(%struct.TYPE_18__* %25)
  store i32* %26, i32** %13, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %28 = call %struct.TYPE_17__* @ZTOI(%struct.TYPE_18__* %27)
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISDIR(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i8*, i8** @B_FALSE, align 8
  store i8* %32, i8** %15, align 8
  store i32 0, i32* %20, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @ZRENAMING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %150, label %37

37:                                               ; preds = %5
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = call i32 @mutex_enter(i32* %39)
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = call i32 @zfs_dirempty(%struct.TYPE_18__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = call i32 @mutex_exit(i32* %49)
  %51 = load i32, i32* @ENOTEMPTY, align 4
  %52 = call i32 @SET_ERROR(i32 %51)
  store i32 %52, i32* %6, align 4
  br label %245

53:                                               ; preds = %43, %37
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @zfs_dropname(%struct.TYPE_19__* %54, %struct.TYPE_18__* %55, %struct.TYPE_18__* %56, i32* %57, i32 %58)
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %21, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = call i32 @mutex_exit(i32* %64)
  %66 = load i32, i32* %21, align 4
  store i32 %66, i32* %6, align 4
  br label %245

67:                                               ; preds = %53
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %69 = call %struct.TYPE_17__* @ZTOI(%struct.TYPE_18__* %68)
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %67
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = call %struct.TYPE_17__* @ZTOI(%struct.TYPE_18__* %78)
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  %84 = call i32 @zfs_panic_recover(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %81, i32 %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %86 = call %struct.TYPE_17__* @ZTOI(%struct.TYPE_18__* %85)
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 @set_nlink(%struct.TYPE_17__* %86, i32 %88)
  br label %90

90:                                               ; preds = %74, %67
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %92 = call %struct.TYPE_17__* @ZTOI(%struct.TYPE_18__* %91)
  %93 = call i32 @drop_nlink(%struct.TYPE_17__* %92)
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = call %struct.TYPE_17__* @ZTOI(%struct.TYPE_18__* %94)
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %90
  %101 = load i8*, i8** @B_TRUE, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %105 = call %struct.TYPE_17__* @ZTOI(%struct.TYPE_18__* %104)
  %106 = call i32 @clear_nlink(%struct.TYPE_17__* %105)
  %107 = load i8*, i8** @B_TRUE, align 8
  store i8* %107, i8** %15, align 8
  br label %126

108:                                              ; preds = %90
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %110 = load i32, i32* %20, align 4
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @SA_ZPL_CTIME(i32* %111)
  %113 = call i32 (i32*, i32, i32, i32*, ...) @SA_ADD_BULK_ATTR(i32* %109, i32 %110, i32 %112, i32* null, [2 x i32]* %18, i64 8)
  %114 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %115 = load i32, i32* %20, align 4
  %116 = load i32*, i32** %13, align 8
  %117 = call i32 @SA_ZPL_FLAGS(i32* %116)
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = call i32 (i32*, i32, i32, i32*, ...) @SA_ADD_BULK_ATTR(i32* %114, i32 %115, i32 %117, i32* null, i32* %119, i64 4)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %122 = load i32, i32* @STATE_CHANGED, align 4
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %125 = call i32 @zfs_tstamp_update_setup(%struct.TYPE_18__* %121, i32 %122, i32* %123, i32* %124)
  br label %126

126:                                              ; preds = %108, %100
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %128 = call %struct.TYPE_17__* @ZTOI(%struct.TYPE_18__* %127)
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %19, align 4
  %131 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %132 = load i32, i32* %20, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = call i32 @SA_ZPL_LINKS(i32* %133)
  %135 = call i32 (i32*, i32, i32, i32*, ...) @SA_ADD_BULK_ATTR(i32* %131, i32 %132, i32 %134, i32* null, i32* %19, i64 4)
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %140 = load i32, i32* %20, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @sa_bulk_update(i32 %138, i32* %139, i32 %140, i32* %141)
  store i32 %142, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %143 = load i32, i32* %21, align 4
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @ASSERT(i32 %145)
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  %149 = call i32 @mutex_exit(i32* %148)
  br label %162

150:                                              ; preds = %5
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @zfs_dropname(%struct.TYPE_19__* %151, %struct.TYPE_18__* %152, %struct.TYPE_18__* %153, i32* %154, i32 %155)
  store i32 %156, i32* %21, align 4
  %157 = load i32, i32* %21, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %150
  %160 = load i32, i32* %21, align 4
  store i32 %160, i32* %6, align 4
  br label %245

161:                                              ; preds = %150
  br label %162

162:                                              ; preds = %161, %126
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 2
  %165 = call i32 @mutex_enter(i32* %164)
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %162
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %174 = call %struct.TYPE_17__* @ZTOI(%struct.TYPE_18__* %173)
  %175 = call i32 @drop_nlink(%struct.TYPE_17__* %174)
  br label %176

176:                                              ; preds = %172, %162
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %178 = call %struct.TYPE_17__* @ZTOI(%struct.TYPE_18__* %177)
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %19, align 4
  %181 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %182 = load i32, i32* %20, align 4
  %183 = load i32*, i32** %13, align 8
  %184 = call i32 @SA_ZPL_LINKS(i32* %183)
  %185 = call i32 (i32*, i32, i32, i32*, ...) @SA_ADD_BULK_ATTR(i32* %181, i32 %182, i32 %184, i32* null, i32* %19, i64 4)
  %186 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %187 = load i32, i32* %20, align 4
  %188 = load i32*, i32** %13, align 8
  %189 = call i32 @SA_ZPL_SIZE(i32* %188)
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = call i32 (i32*, i32, i32, i32*, ...) @SA_ADD_BULK_ATTR(i32* %186, i32 %187, i32 %189, i32* null, i32* %191, i64 4)
  %193 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %194 = load i32, i32* %20, align 4
  %195 = load i32*, i32** %13, align 8
  %196 = call i32 @SA_ZPL_CTIME(i32* %195)
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %198 = call i32 (i32*, i32, i32, i32*, ...) @SA_ADD_BULK_ATTR(i32* %193, i32 %194, i32 %196, i32* null, i32* %197, i64 8)
  %199 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %200 = load i32, i32* %20, align 4
  %201 = load i32*, i32** %13, align 8
  %202 = call i32 @SA_ZPL_MTIME(i32* %201)
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %204 = call i32 (i32*, i32, i32, i32*, ...) @SA_ADD_BULK_ATTR(i32* %199, i32 %200, i32 %202, i32* null, i32* %203, i64 8)
  %205 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %206 = load i32, i32* %20, align 4
  %207 = load i32*, i32** %13, align 8
  %208 = call i32 @SA_ZPL_FLAGS(i32* %207)
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = call i32 (i32*, i32, i32, i32*, ...) @SA_ADD_BULK_ATTR(i32* %205, i32 %206, i32 %208, i32* null, i32* %210, i64 4)
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %213 = load i32, i32* @CONTENT_MODIFIED, align 4
  %214 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %215 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %216 = call i32 @zfs_tstamp_update_setup(%struct.TYPE_18__* %212, i32 %213, i32* %214, i32* %215)
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 0
  %221 = load i32, i32* %20, align 4
  %222 = load i32*, i32** %9, align 8
  %223 = call i32 @sa_bulk_update(i32 %219, i32* %220, i32 %221, i32* %222)
  store i32 %223, i32* %21, align 4
  %224 = load i32, i32* %21, align 4
  %225 = icmp eq i32 %224, 0
  %226 = zext i1 %225 to i32
  %227 = call i32 @ASSERT(i32 %226)
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 2
  %230 = call i32 @mutex_exit(i32* %229)
  %231 = load i8**, i8*** %11, align 8
  %232 = icmp ne i8** %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %176
  %234 = load i8*, i8** %15, align 8
  %235 = load i8**, i8*** %11, align 8
  store i8* %234, i8** %235, align 8
  br label %244

236:                                              ; preds = %176
  %237 = load i8*, i8** %15, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %236
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %241 = load i32*, i32** %9, align 8
  %242 = call i32 @zfs_unlinked_add(%struct.TYPE_18__* %240, i32* %241)
  br label %243

243:                                              ; preds = %239, %236
  br label %244

244:                                              ; preds = %243, %233
  store i32 0, i32* %6, align 4
  br label %245

245:                                              ; preds = %244, %159, %62, %47
  %246 = load i32, i32* %6, align 4
  ret i32 %246
}

declare dso_local i32* @ZTOZSB(%struct.TYPE_18__*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_17__* @ZTOI(%struct.TYPE_18__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @zfs_dirempty(%struct.TYPE_18__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_dropname(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @zfs_panic_recover(i8*, i32, i32, i32) #1

declare dso_local i32 @set_nlink(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @drop_nlink(%struct.TYPE_17__*) #1

declare dso_local i32 @clear_nlink(%struct.TYPE_17__*) #1

declare dso_local i32 @SA_ADD_BULK_ATTR(i32*, i32, i32, i32*, ...) #1

declare dso_local i32 @SA_ZPL_CTIME(i32*) #1

declare dso_local i32 @SA_ZPL_FLAGS(i32*) #1

declare dso_local i32 @zfs_tstamp_update_setup(%struct.TYPE_18__*, i32, i32*, i32*) #1

declare dso_local i32 @SA_ZPL_LINKS(i32*) #1

declare dso_local i32 @sa_bulk_update(i32, i32*, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @SA_ZPL_SIZE(i32*) #1

declare dso_local i32 @SA_ZPL_MTIME(i32*) #1

declare dso_local i32 @zfs_unlinked_add(%struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
