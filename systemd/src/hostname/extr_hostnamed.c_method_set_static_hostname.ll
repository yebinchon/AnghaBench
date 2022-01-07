; ModuleID = '/home/carl/AnghaBench/systemd/src/hostname/extr_hostnamed.c_method_set_static_hostname.c'
source_filename = "/home/carl/AnghaBench/systemd/src/hostname/extr_hostnamed.c_method_set_static_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@PROP_STATIC_HOSTNAME = common dso_local global i64 0, align 8
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid static hostname '%s'\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"org.freedesktop.hostname1.set-static-hostname\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to set host name: %m\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to set hostname: %m\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to write static host name: %m\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to set static hostname: %m\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Changed static host name to '%s'\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"/org/freedesktop/hostname1\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"org.freedesktop.hostname1\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"StaticHostname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*)* @method_set_static_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_set_static_hostname(%struct.TYPE_11__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %8, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = call i32 @assert(%struct.TYPE_11__* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = call i32 @assert(%struct.TYPE_11__* %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = call i32 @sd_bus_message_read(%struct.TYPE_11__* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, i32* %10)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %117

24:                                               ; preds = %3
  %25 = load i8*, i8** %9, align 8
  %26 = call i8* @empty_to_null(i8* %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @PROP_STATIC_HOSTNAME, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @streq_ptr(i8* %27, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = call i32 @sd_bus_reply_method_return(%struct.TYPE_11__* %37, i32* null)
  store i32 %38, i32* %4, align 4
  br label %117

39:                                               ; preds = %24
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @isempty(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @hostname_is_valid(i8* %44, i32 0)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @sd_bus_error_setf(i32* %48, i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  store i32 %51, i32* %4, align 4
  br label %117

52:                                               ; preds = %43, %39
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @UID_INVALID, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @bus_verify_polkit_async(%struct.TYPE_11__* %53, i32 %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %55, i32 %56, i32* %58, i32* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %117

65:                                               ; preds = %52
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %117

69:                                               ; preds = %65
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @PROP_STATIC_HOSTNAME, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @free_and_strdup(i32* %74, i8* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %117

81:                                               ; preds = %69
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = call i32 @context_update_kernel_hostname(%struct.TYPE_11__* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @log_error_errno(i32 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @sd_bus_error_set_errnof(i32* %89, i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 %91, i32* %4, align 4
  br label %117

92:                                               ; preds = %81
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = call i32 @context_write_data_static_hostname(%struct.TYPE_11__* %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @log_error_errno(i32 %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @sd_bus_error_set_errnof(i32* %100, i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i32 %102, i32* %4, align 4
  br label %117

103:                                              ; preds = %92
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @PROP_STATIC_HOSTNAME, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @strna(i32 %109)
  %111 = call i32 @log_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = call i32 @sd_bus_message_get_bus(%struct.TYPE_11__* %112)
  %114 = call i32 @sd_bus_emit_properties_changed(i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32* null)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = call i32 @sd_bus_reply_method_return(%struct.TYPE_11__* %115, i32* null)
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %103, %97, %86, %79, %68, %63, %47, %36, %22
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_11__*, i8*, i8**, i32*) #1

declare dso_local i8* @empty_to_null(i8*) #1

declare dso_local i64 @streq_ptr(i8*, i32) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @isempty(i8*) #1

declare dso_local i32 @hostname_is_valid(i8*, i32) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_11__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @free_and_strdup(i32*, i8*) #1

declare dso_local i32 @context_update_kernel_hostname(%struct.TYPE_11__*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_bus_error_set_errnof(i32*, i32, i8*) #1

declare dso_local i32 @context_write_data_static_hostname(%struct.TYPE_11__*) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @strna(i32) #1

declare dso_local i32 @sd_bus_emit_properties_changed(i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_get_bus(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
