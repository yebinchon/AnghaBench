; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_get.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i8**, i8*, i8*, i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32, i32, i32 }

@B_TRUE = common dso_local global i8* null, align 8
@ZPROP_SRC_ALL = common dso_local global i32 0, align 4
@GET_COL_NAME = common dso_local global i8* null, align 8
@GET_COL_PROPERTY = common dso_local global i8* null, align 8
@GET_COL_VALUE = common dso_local global i8* null, align 8
@GET_COL_SOURCE = common dso_local global i8* null, align 8
@ZFS_TYPE_POOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c":Hpo:\00", align 1
@optarg = common dso_local global i8* null, align 8
@zpool_do_get.col_subopts = internal global [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@ZFS_GET_NCOLS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"too many fields given to -o option\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c"\22all\22 conflicts with specific fields given to -o option\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"invalid column name '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"missing property argument\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZPOOL_PROP_NAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@get_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_get(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 56, i1 false)
  %12 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load i8*, i8** @B_TRUE, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 6
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @ZPROP_SRC_ALL, align 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  store i32 %15, i32* %16, align 4
  %17 = load i8*, i8** @GET_COL_NAME, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  store i8* %17, i8** %20, align 8
  %21 = load i8*, i8** @GET_COL_PROPERTY, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* %21, i8** %24, align 8
  %25 = load i8*, i8** @GET_COL_VALUE, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  store i8* %25, i8** %28, align 8
  %29 = load i8*, i8** @GET_COL_SOURCE, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 3
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* @ZFS_TYPE_POOL, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  br label %35

35:                                               ; preds = %143, %2
  %36 = load i32, i32* %3, align 4
  %37 = load i8**, i8*** %4, align 8
  %38 = call i32 @getopt(i32 %36, i8** %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %144

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %143 [
    i32 112, label %42
    i32 72, label %45
    i32 111, label %48
    i32 63, label %136
  ]

42:                                               ; preds = %40
  %43 = load i8*, i8** @B_TRUE, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  store i8* %43, i8** %44, align 8
  br label %143

45:                                               ; preds = %40
  %46 = load i8*, i8** @B_TRUE, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  br label %143

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %50 = call i32 @bzero(i8*** %49, i32 8)
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %134, %48
  %52 = load i8*, i8** @optarg, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %135

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ZFS_GET_NCOLS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* @stderr, align 4
  %62 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* %62)
  %64 = load i32, i32* @B_FALSE, align 4
  %65 = call i32 @usage(i32 %64)
  br label %66

66:                                               ; preds = %60, %56
  %67 = call i32 @getsubopt(i8** @optarg, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @zpool_do_get.col_subopts, i64 0, i64 0), i8** %10)
  switch i32 %67, label %127 [
    i32 0, label %68
    i32 1, label %76
    i32 2, label %84
    i32 3, label %92
    i32 4, label %100
  ]

68:                                               ; preds = %66
  %69 = load i8*, i8** @GET_COL_NAME, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8*, i8** %71, i64 %74
  store i8* %69, i8** %75, align 8
  br label %134

76:                                               ; preds = %66
  %77 = load i8*, i8** @GET_COL_PROPERTY, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  store i8* %77, i8** %83, align 8
  br label %134

84:                                               ; preds = %66
  %85 = load i8*, i8** @GET_COL_VALUE, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  store i8* %85, i8** %91, align 8
  br label %134

92:                                               ; preds = %66
  %93 = load i8*, i8** @GET_COL_SOURCE, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98
  store i8* %93, i8** %99, align 8
  br label %134

100:                                              ; preds = %66
  %101 = load i32, i32* %9, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* @stderr, align 4
  %105 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* %105)
  %107 = load i32, i32* @B_FALSE, align 4
  %108 = call i32 @usage(i32 %107)
  br label %109

109:                                              ; preds = %103, %100
  %110 = load i8*, i8** @GET_COL_NAME, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  store i8* %110, i8** %113, align 8
  %114 = load i8*, i8** @GET_COL_PROPERTY, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  store i8* %114, i8** %117, align 8
  %118 = load i8*, i8** @GET_COL_VALUE, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 2
  store i8* %118, i8** %121, align 8
  %122 = load i8*, i8** @GET_COL_SOURCE, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 3
  store i8* %122, i8** %125, align 8
  %126 = load i32, i32* @ZFS_GET_NCOLS, align 4
  store i32 %126, i32* %9, align 4
  br label %134

127:                                              ; preds = %66
  %128 = load i32, i32* @stderr, align 4
  %129 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %130 = load i8*, i8** %10, align 8
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* %129, i8* %130)
  %132 = load i32, i32* @B_FALSE, align 4
  %133 = call i32 @usage(i32 %132)
  br label %134

134:                                              ; preds = %127, %109, %92, %84, %76, %68
  br label %51

135:                                              ; preds = %51
  br label %143

136:                                              ; preds = %40
  %137 = load i32, i32* @stderr, align 4
  %138 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %139 = load i32, i32* @optopt, align 4
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* %138, i32 %139)
  %141 = load i32, i32* @B_FALSE, align 4
  %142 = call i32 @usage(i32 %141)
  br label %143

143:                                              ; preds = %136, %40, %135, %45, %42
  br label %35

144:                                              ; preds = %35
  %145 = load i64, i64* @optind, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = sub nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %3, align 4
  %150 = load i64, i64* @optind, align 8
  %151 = load i8**, i8*** %4, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 %150
  store i8** %152, i8*** %4, align 8
  %153 = load i32, i32* %3, align 4
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %155, label %161

155:                                              ; preds = %144
  %156 = load i32, i32* @stderr, align 4
  %157 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* %157)
  %159 = load i32, i32* @B_FALSE, align 4
  %160 = call i32 @usage(i32 %159)
  br label %161

161:                                              ; preds = %155, %144
  %162 = load i32, i32* @g_zfs, align 4
  %163 = load i8**, i8*** %4, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %167 = load i32, i32* @ZFS_TYPE_POOL, align 4
  %168 = call i64 @zprop_get_list(i32 %162, i8* %165, %struct.TYPE_7__** %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = load i32, i32* @B_FALSE, align 4
  %172 = call i32 @usage(i32 %171)
  br label %173

173:                                              ; preds = %170, %161
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %3, align 4
  %176 = load i8**, i8*** %4, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i32 1
  store i8** %177, i8*** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = icmp ne %struct.TYPE_7__* %179, null
  br i1 %180, label %181, label %191

181:                                              ; preds = %173
  %182 = load i32, i32* @ZPOOL_PROP_NAME, align 4
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 %182, i32* %183, align 4
  %184 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %185 = call i32 @strlen(i8* %184)
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %185, i32* %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store %struct.TYPE_7__* %188, %struct.TYPE_7__** %189, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %190, align 8
  br label %191

191:                                              ; preds = %181, %173
  %192 = load i32, i32* %3, align 4
  %193 = load i8**, i8*** %4, align 8
  %194 = load i8*, i8** @B_TRUE, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %196 = load i32, i32* @get_callback, align 4
  %197 = call i32 @for_each_pool(i32 %192, i8** %193, i8* %194, %struct.TYPE_7__** %195, i32 %196, %struct.TYPE_8__* %5)
  store i32 %197, i32* %7, align 4
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = icmp eq %struct.TYPE_7__* %199, %6
  br i1 %200, label %201, label %205

201:                                              ; preds = %191
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = call i32 @zprop_free_list(%struct.TYPE_7__* %203)
  br label %209

205:                                              ; preds = %191
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = call i32 @zprop_free_list(%struct.TYPE_7__* %207)
  br label %209

209:                                              ; preds = %205, %201
  %210 = load i32, i32* %7, align 4
  ret i32 %210
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @bzero(i8***, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @getsubopt(i8**, i8**, i8**) #2

declare dso_local i64 @zprop_get_list(i32, i8*, %struct.TYPE_7__**, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @for_each_pool(i32, i8**, i8*, %struct.TYPE_7__**, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @zprop_free_list(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
