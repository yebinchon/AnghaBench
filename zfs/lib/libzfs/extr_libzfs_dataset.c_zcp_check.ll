; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zcp_check.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zcp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [138 x i8] c"args = ...\0Ads = args['dataset']\0Aprop = args['property']\0Avalue, setpoint = zfs.get_prop(ds, prop)\0Areturn {value=value, setpoint=setpoint}\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dataset\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@PROP_TYPE_NUMBER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: zcp check error: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"%s: zfs found %llu, but zcp found %llu\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"%s: zfs found '%s', but zcp found '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%s: zcp check failed, channel program error: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i64, i8*)* @zcp_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zcp_check(%struct.TYPE_7__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %112

25:                                               ; preds = %4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i8* @zfs_prop_to_name(i32 %31)
  store i8* %32, i8** %11, align 8
  store i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %33 = call i32* (...) @fnvlist_alloc()
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @fnvlist_add_string(i32* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i32*, i32** %15, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i8* @zfs_prop_to_name(i32 %40)
  %42 = call i32 @fnvlist_add_string(i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = call i32 @lzc_channel_program_nosync(i8* %43, i8* %44, i32 10000000, i32 10485760, i32* %45, i32** %13)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %25
  %50 = load i32*, i32** %13, align 8
  %51 = call i32* @fnvlist_lookup_nvlist(i32* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32* %51, i32** %14, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @zfs_prop_get_type(i32 %52)
  %54 = load i64, i64* @PROP_TYPE_NUMBER, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %49
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @nvlist_lookup_int64(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64* %16)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* @stderr, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %63, i32 %64)
  br label %112

66:                                               ; preds = %56
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32, i32* @stderr, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = load i64, i64* %7, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i64, i64* %16, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %72, i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %70, %66
  br label %101

79:                                               ; preds = %49
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @nvlist_lookup_string(i32* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %17)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* @stderr, align 4
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %86, i32 %87)
  br label %112

89:                                               ; preds = %79
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = call i64 @strcmp(i8* %90, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8*, i8** %11, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i8*, i8** %17, align 8
  %99 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %96, i8* %97, i8* %98)
  br label %100

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %78
  br label %107

102:                                              ; preds = %25
  %103 = load i32, i32* @stderr, align 4
  %104 = load i8*, i8** %11, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %101
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @nvlist_free(i32* %108)
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @nvlist_free(i32* %110)
  br label %112

112:                                              ; preds = %107, %84, %61, %24
  ret void
}

declare dso_local i8* @zfs_prop_to_name(i32) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @lzc_channel_program_nosync(i8*, i8*, i32, i32, i32*, i32**) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i8*) #1

declare dso_local i64 @zfs_prop_get_type(i32) #1

declare dso_local i32 @nvlist_lookup_int64(i32*, i8*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
