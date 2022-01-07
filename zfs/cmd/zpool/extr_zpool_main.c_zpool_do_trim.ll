; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_trim.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }
%struct.TYPE_3__ = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"secure\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@required_argument = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@POOL_TRIM_START = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"cdr:s\00", align 1
@POOL_TRIM_CANCEL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"-c cannot be combined with other options\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"-d cannot be combined with the -c or -s options\0A\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [49 x i8] c"-r cannot be combined with the -c or -s options\0A\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"invalid value for rate\0A\00", align 1
@POOL_TRIM_SUSPEND = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"-s cannot be combined with other options\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"invalid option '%s'\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [28 x i8] c"missing pool name argument\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_trim(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x %struct.option], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %6, i64 0, i64 0
  %20 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 1
  %22 = load i32, i32* @no_argument, align 4
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %21, align 8
  %24 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 2
  store i32* null, i32** %24, align 16
  %25 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 3
  store i32 99, i32* %25, align 8
  %26 = getelementptr inbounds %struct.option, %struct.option* %19, i64 1
  %27 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 16
  %28 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 1
  %29 = load i32, i32* @no_argument, align 4
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %28, align 8
  %31 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 2
  store i32* null, i32** %31, align 16
  %32 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 3
  store i32 100, i32* %32, align 8
  %33 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %34 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 16
  %35 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 1
  %36 = load i32, i32* @required_argument, align 4
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %35, align 8
  %38 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 2
  store i32* null, i32** %38, align 16
  %39 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 3
  store i32 114, i32* %39, align 8
  %40 = getelementptr inbounds %struct.option, %struct.option* %33, i64 1
  %41 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %41, align 16
  %42 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 1
  %43 = load i32, i32* @no_argument, align 4
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 8
  %45 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 2
  store i32* null, i32** %45, align 16
  %46 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 3
  store i32 115, i32* %46, align 8
  %47 = getelementptr inbounds %struct.option, %struct.option* %40, i64 1
  %48 = bitcast %struct.option* %47 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %48, i8 0, i64 32, i1 false)
  %49 = getelementptr inbounds %struct.option, %struct.option* %47, i32 0, i32 1
  store i8 0, i8* %49, align 8
  %50 = load i32, i32* @POOL_TRIM_START, align 4
  store i32 %50, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %51 = load i8*, i8** @B_FALSE, align 8
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %145, %2
  %53 = load i32, i32* %4, align 4
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %6, i64 0, i64 0
  %56 = call i32 @getopt_long(i32 %53, i8** %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %struct.option* %55, i32* null)
  store i32 %56, i32* %10, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %146

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  switch i32 %59, label %145 [
    i32 99, label %60
    i32 100, label %76
    i32 114, label %88
    i32 115, label %109
    i32 63, label %125
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @POOL_TRIM_START, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @POOL_TRIM_CANCEL, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* @stderr, align 4
  %70 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* %70)
  %72 = load i8*, i8** @B_FALSE, align 8
  %73 = call i32 @usage(i8* %72)
  br label %74

74:                                               ; preds = %68, %64, %60
  %75 = load i32, i32* @POOL_TRIM_CANCEL, align 4
  store i32 %75, i32* %7, align 4
  br label %145

76:                                               ; preds = %58
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @POOL_TRIM_START, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* @stderr, align 4
  %82 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* %82)
  %84 = load i8*, i8** @B_FALSE, align 8
  %85 = call i32 @usage(i8* %84)
  br label %86

86:                                               ; preds = %80, %76
  %87 = load i8*, i8** @B_TRUE, align 8
  store i8* %87, i8** %9, align 8
  br label %145

88:                                               ; preds = %58
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @POOL_TRIM_START, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* @stderr, align 4
  %94 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* %94)
  %96 = load i8*, i8** @B_FALSE, align 8
  %97 = call i32 @usage(i8* %96)
  br label %98

98:                                               ; preds = %92, %88
  %99 = load i32, i32* @optarg, align 4
  %100 = call i32 @zfs_nicestrtonum(i32* null, i32 %99, i32* %8)
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32, i32* @stderr, align 4
  %104 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* %104)
  %106 = load i8*, i8** @B_FALSE, align 8
  %107 = call i32 @usage(i8* %106)
  br label %108

108:                                              ; preds = %102, %98
  br label %145

109:                                              ; preds = %58
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @POOL_TRIM_START, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @POOL_TRIM_SUSPEND, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* @stderr, align 4
  %119 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* %119)
  %121 = load i8*, i8** @B_FALSE, align 8
  %122 = call i32 @usage(i8* %121)
  br label %123

123:                                              ; preds = %117, %113, %109
  %124 = load i32, i32* @POOL_TRIM_SUSPEND, align 4
  store i32 %124, i32* %7, align 4
  br label %145

125:                                              ; preds = %58
  %126 = load i32, i32* @optopt, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32, i32* @stderr, align 4
  %130 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %131 = load i32, i32* @optopt, align 4
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %129, i8* %130, i32 %131)
  br label %142

133:                                              ; preds = %125
  %134 = load i32, i32* @stderr, align 4
  %135 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %136 = load i8**, i8*** %5, align 8
  %137 = load i64, i64* @optind, align 8
  %138 = sub i64 %137, 1
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* %135, i8* %140)
  br label %142

142:                                              ; preds = %133, %128
  %143 = load i8*, i8** @B_FALSE, align 8
  %144 = call i32 @usage(i8* %143)
  br label %145

145:                                              ; preds = %142, %58, %123, %108, %86, %74
  br label %52

146:                                              ; preds = %52
  %147 = load i64, i64* @optind, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = sub i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %4, align 4
  %152 = load i64, i64* @optind, align 8
  %153 = load i8**, i8*** %5, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 %152
  store i8** %154, i8*** %5, align 8
  %155 = load i32, i32* %4, align 4
  %156 = icmp slt i32 %155, 1
  br i1 %156, label %157, label %163

157:                                              ; preds = %146
  %158 = load i32, i32* @stderr, align 4
  %159 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %160 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* %159)
  %161 = load i8*, i8** @B_FALSE, align 8
  %162 = call i32 @usage(i8* %161)
  store i32 -1, i32* %3, align 4
  br label %223

163:                                              ; preds = %146
  %164 = load i8**, i8*** %5, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 0
  %166 = load i8*, i8** %165, align 8
  store i8* %166, i8** %11, align 8
  %167 = load i32, i32* @g_zfs, align 4
  %168 = load i8*, i8** %11, align 8
  %169 = call i32* @zpool_open(i32 %167, i8* %168)
  store i32* %169, i32** %12, align 8
  %170 = load i32*, i32** %12, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  store i32 -1, i32* %3, align 4
  br label %223

173:                                              ; preds = %163
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i8* null, i8** %174, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %178 = load i8*, i8** %9, align 8
  store i8* %178, i8** %177, align 8
  %179 = call i32* (...) @fnvlist_alloc()
  store i32* %179, i32** %14, align 8
  %180 = load i32, i32* %4, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %194

182:                                              ; preds = %173
  %183 = load i32*, i32** %12, align 8
  %184 = call i32* @zpool_get_config(i32* %183, i32* null)
  store i32* %184, i32** %15, align 8
  %185 = load i32*, i32** %15, align 8
  %186 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %187 = call i32* @fnvlist_lookup_nvlist(i32* %185, i32 %186)
  store i32* %187, i32** %16, align 8
  %188 = load i32*, i32** %12, align 8
  %189 = load i32*, i32** %16, align 8
  %190 = load i32*, i32** %14, align 8
  %191 = call i32 @zpool_collect_leaves(i32* %188, i32* %189, i32* %190)
  %192 = load i8*, i8** @B_TRUE, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i8* %192, i8** %193, align 8
  br label %213

194:                                              ; preds = %173
  %195 = load i8*, i8** @B_FALSE, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i8* %195, i8** %196, align 8
  store i32 1, i32* %17, align 4
  br label %197

197:                                              ; preds = %209, %194
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %4, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %212

201:                                              ; preds = %197
  %202 = load i32*, i32** %14, align 8
  %203 = load i8**, i8*** %5, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @fnvlist_add_boolean(i32* %202, i8* %207)
  br label %209

209:                                              ; preds = %201
  %210 = load i32, i32* %17, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %17, align 4
  br label %197

212:                                              ; preds = %197
  br label %213

213:                                              ; preds = %212, %182
  %214 = load i32*, i32** %12, align 8
  %215 = load i32, i32* %7, align 4
  %216 = load i32*, i32** %14, align 8
  %217 = call i32 @zpool_trim(i32* %214, i32 %215, i32* %216, %struct.TYPE_3__* %13)
  store i32 %217, i32* %18, align 4
  %218 = load i32*, i32** %14, align 8
  %219 = call i32 @fnvlist_free(i32* %218)
  %220 = load i32*, i32** %12, align 8
  %221 = call i32 @zpool_close(i32* %220)
  %222 = load i32, i32* %18, align 4
  store i32 %222, i32* %3, align 4
  br label %223

223:                                              ; preds = %213, %172, %157
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i32 @zfs_nicestrtonum(i32*, i32, i32*) #2

declare dso_local i32* @zpool_open(i32, i8*) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32* @zpool_get_config(i32*, i32*) #2

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #2

declare dso_local i32 @zpool_collect_leaves(i32*, i32*, i32*) #2

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #2

declare dso_local i32 @zpool_trim(i32*, i32, i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @fnvlist_free(i32*) #2

declare dso_local i32 @zpool_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
