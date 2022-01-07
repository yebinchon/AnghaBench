; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_status.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"c:igLpPsvxDtT:\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't set -c flag twice\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ZPOOL_SCRIPTS_ENABLED\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Can't run -c, disabled by ZPOOL_SCRIPTS_ENABLED.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ZPOOL_SCRIPTS_AS_ROOT\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"Can't run -c with root privileges unless ZPOOL_SCRIPTS_AS_ROOT is set.\0A\00", align 1
@optarg = common dso_local global i8* null, align 8
@B_TRUE = common dso_local global i8* null, align 8
@VDEV_NAME_GUID = common dso_local global i32 0, align 4
@VDEV_NAME_FOLLOW_LINKS = common dso_local global i32 0, align 4
@VDEV_NAME_PATH = common dso_local global i32 0, align 4
@optopt = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@timestamp_fmt = common dso_local global i64 0, align 8
@NODATE = common dso_local global i64 0, align 8
@status_callback = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"no pools available\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"all pools are healthy\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_status(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store float 0.000000e+00, float* %8, align 4
  store i64 0, i64* %9, align 8
  %12 = bitcast %struct.TYPE_3__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 112, i1 false)
  store i8* null, i8** %11, align 8
  br label %13

13:                                               ; preds = %111, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %112

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %111 [
    i32 99, label %20
    i32 105, label %55
    i32 103, label %58
    i32 76, label %63
    i32 112, label %68
    i32 80, label %71
    i32 115, label %76
    i32 118, label %79
    i32 120, label %82
    i32 68, label %85
    i32 116, label %88
    i32 84, label %91
    i32 63, label %95
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* %25)
  %27 = call i32 @exit(i32 1) #4
  unreachable

28:                                               ; preds = %20
  %29 = call i32* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = call i32 @libzfs_envvar_is_set(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @stderr, align 4
  %36 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* %36)
  %38 = call i32 @exit(i32 1) #4
  unreachable

39:                                               ; preds = %31, %28
  %40 = call i32 (...) @getuid()
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = call i32 (...) @geteuid()
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42, %39
  %46 = call i32 @libzfs_envvar_is_set(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @stderr, align 4
  %50 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0))
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* %50)
  %52 = call i32 @exit(i32 1) #4
  unreachable

53:                                               ; preds = %45, %42
  %54 = load i8*, i8** @optarg, align 8
  store i8* %54, i8** %11, align 8
  br label %111

55:                                               ; preds = %18
  %56 = load i8*, i8** @B_TRUE, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 12
  store i8* %56, i8** %57, align 8
  br label %111

58:                                               ; preds = %18
  %59 = load i32, i32* @VDEV_NAME_GUID, align 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 10
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 8
  br label %111

63:                                               ; preds = %18
  %64 = load i32, i32* @VDEV_NAME_FOLLOW_LINKS, align 4
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 10
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 8
  br label %111

68:                                               ; preds = %18
  %69 = load i8*, i8** @B_TRUE, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 11
  store i8* %69, i8** %70, align 8
  br label %111

71:                                               ; preds = %18
  %72 = load i32, i32* @VDEV_NAME_PATH, align 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 10
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 8
  br label %111

76:                                               ; preds = %18
  %77 = load i8*, i8** @B_TRUE, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 9
  store i8* %77, i8** %78, align 8
  br label %111

79:                                               ; preds = %18
  %80 = load i8*, i8** @B_TRUE, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 8
  store i8* %80, i8** %81, align 8
  br label %111

82:                                               ; preds = %18
  %83 = load i8*, i8** @B_TRUE, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i8* %83, i8** %84, align 8
  br label %111

85:                                               ; preds = %18
  %86 = load i8*, i8** @B_TRUE, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 7
  store i8* %86, i8** %87, align 8
  br label %111

88:                                               ; preds = %18
  %89 = load i8*, i8** @B_TRUE, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 6
  store i8* %89, i8** %90, align 8
  br label %111

91:                                               ; preds = %18
  %92 = load i8*, i8** @optarg, align 8
  %93 = load i8, i8* %92, align 1
  %94 = call i32 @get_timestamp_arg(i8 signext %93)
  br label %111

95:                                               ; preds = %18
  %96 = load i8, i8* @optopt, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 99
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = call i32 @print_zpool_script_list(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %101 = call i32 @exit(i32 0) #4
  unreachable

102:                                              ; preds = %95
  %103 = load i32, i32* @stderr, align 4
  %104 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %105 = load i8, i8* @optopt, align 1
  %106 = sext i8 %105 to i32
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* %104, i32 %106)
  br label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @B_FALSE, align 4
  %110 = call i32 @usage(i32 %109)
  br label %111

111:                                              ; preds = %108, %18, %91, %88, %85, %82, %79, %76, %71, %68, %63, %58, %55, %53
  br label %13

112:                                              ; preds = %13
  %113 = load i64, i64* @optind, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %4, align 4
  %118 = load i64, i64* @optind, align 8
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 %118
  store i8** %120, i8*** %5, align 8
  %121 = load i8**, i8*** %5, align 8
  %122 = call i32 @get_interval_count(i32* %4, i8** %121, float* %8, i64* %9)
  %123 = load i32, i32* %4, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %112
  %126 = load i8*, i8** @B_TRUE, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i8* %126, i8** %127, align 8
  br label %128

128:                                              ; preds = %125, %112
  %129 = load i8*, i8** @B_TRUE, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  store i8* %129, i8** %130, align 8
  %131 = load i8*, i8** @B_TRUE, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 5
  store i8* %131, i8** %132, align 8
  br label %133

133:                                              ; preds = %206, %128
  %134 = load i64, i64* @timestamp_fmt, align 8
  %135 = load i64, i64* @NODATE, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i64, i64* @timestamp_fmt, align 8
  %139 = call i32 @print_timestamp(i64 %138)
  br label %140

140:                                              ; preds = %137, %133
  %141 = load i8*, i8** %11, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32, i32* %4, align 4
  %145 = load i8**, i8*** %5, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = call i32* @all_pools_for_each_vdev_run(i32 %144, i8** %145, i8* %146, i32* null, i32* null, i32 0, i32 0)
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  store i32* %147, i32** %148, align 8
  br label %149

149:                                              ; preds = %143, %140
  %150 = load i32, i32* %4, align 4
  %151 = load i8**, i8*** %5, align 8
  %152 = load i8*, i8** @B_TRUE, align 8
  %153 = load i32, i32* @status_callback, align 4
  %154 = call i32 @for_each_pool(i32 %150, i8** %151, i8* %152, i32* null, i32 %153, %struct.TYPE_3__* %10)
  store i32 %154, i32* %7, align 4
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @free_vdev_cmd_data_list(i32* %160)
  br label %162

162:                                              ; preds = %158, %149
  %163 = load i32, i32* %4, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load i32, i32* @stderr, align 4
  %171 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %172 = call i32 (i32, i8*, ...) @fprintf(i32 %170, i8* %171)
  br label %189

173:                                              ; preds = %165, %162
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %188

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %187 = call i32 @printf(i8* %186)
  br label %188

188:                                              ; preds = %185, %181, %177, %173
  br label %189

189:                                              ; preds = %188, %169
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %3, align 4
  br label %210

194:                                              ; preds = %189
  %195 = load float, float* %8, align 4
  %196 = fcmp oeq float %195, 0.000000e+00
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  br label %209

198:                                              ; preds = %194
  %199 = load i64, i64* %9, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load i64, i64* %9, align 8
  %203 = add i64 %202, -1
  store i64 %203, i64* %9, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  br label %209

206:                                              ; preds = %201, %198
  %207 = load float, float* %8, align 4
  %208 = call i32 @fsleep(float %207)
  br label %133

209:                                              ; preds = %205, %197
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %192
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @getenv(i8*) #2

declare dso_local i32 @libzfs_envvar_is_set(i8*) #2

declare dso_local i32 @getuid(...) #2

declare dso_local i32 @geteuid(...) #2

declare dso_local i32 @get_timestamp_arg(i8 signext) #2

declare dso_local i32 @print_zpool_script_list(i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @get_interval_count(i32*, i8**, float*, i64*) #2

declare dso_local i32 @print_timestamp(i64) #2

declare dso_local i32* @all_pools_for_each_vdev_run(i32, i8**, i8*, i32*, i32*, i32, i32) #2

declare dso_local i32 @for_each_pool(i32, i8**, i8*, i32*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @free_vdev_cmd_data_list(i32*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @fsleep(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
