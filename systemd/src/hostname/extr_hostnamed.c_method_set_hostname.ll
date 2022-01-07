; ModuleID = '/home/carl/AnghaBench/systemd/src/hostname/extr_hostnamed.c_method_set_hostname.c'
source_filename = "/home/carl/AnghaBench/systemd/src/hostname/extr_hostnamed.c_method_set_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8**, i32 }

@.str = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@PROP_STATIC_HOSTNAME = common dso_local global i64 0, align 8
@FALLBACK_HOSTNAME = common dso_local global i8* null, align 8
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid hostname '%s'\00", align 1
@PROP_HOSTNAME = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"org.freedesktop.hostname1.set-hostname\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to set host name: %m\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to set hostname: %m\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Changed host name to '%s'\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"/org/freedesktop/hostname1\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"org.freedesktop.hostname1\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Hostname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32*)* @method_set_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_set_hostname(%struct.TYPE_10__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %8, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = call i32 @assert(%struct.TYPE_10__* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = call i32 @assert(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = call i32 @sd_bus_message_read(%struct.TYPE_10__* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, i32* %10)
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
  %26 = call i64 @isempty(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = load i64, i64* @PROP_STATIC_HOSTNAME, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %9, align 8
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @isempty(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i8*, i8** @FALLBACK_HOSTNAME, align 8
  store i8* %40, i8** %9, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @hostname_is_valid(i8* %42, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @sd_bus_error_setf(i32* %46, i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  store i32 %49, i32* %4, align 4
  br label %117

50:                                               ; preds = %41
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = load i64, i64* @PROP_HOSTNAME, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @streq_ptr(i8* %51, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = call i32 @sd_bus_reply_method_return(%struct.TYPE_10__* %61, i32* null)
  store i32 %62, i32* %4, align 4
  br label %117

63:                                               ; preds = %50
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @UID_INVALID, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @bus_verify_polkit_async(%struct.TYPE_10__* %64, i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %66, i32 %67, i32* %69, i32* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %117

76:                                               ; preds = %63
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, i32* %4, align 4
  br label %117

80:                                               ; preds = %76
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = load i64, i64* @PROP_HOSTNAME, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @free_and_strdup(i8** %85, i8* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %117

92:                                               ; preds = %80
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = call i32 @context_update_kernel_hostname(%struct.TYPE_10__* %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @log_error_errno(i32 %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @sd_bus_error_set_errnof(i32* %100, i32 %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 %102, i32* %4, align 4
  br label %117

103:                                              ; preds = %92
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = load i64, i64* @PROP_HOSTNAME, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strna(i8* %109)
  %111 = call i32 @log_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %113 = call i32 @sd_bus_message_get_bus(%struct.TYPE_10__* %112)
  %114 = call i32 @sd_bus_emit_properties_changed(i32 %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* null)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = call i32 @sd_bus_reply_method_return(%struct.TYPE_10__* %115, i32* null)
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %103, %97, %90, %79, %74, %60, %45, %22
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_10__*, i8*, i8**, i32*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @hostname_is_valid(i8*, i32) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*) #1

declare dso_local i64 @streq_ptr(i8*, i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_10__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @free_and_strdup(i8**, i8*) #1

declare dso_local i32 @context_update_kernel_hostname(%struct.TYPE_10__*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_bus_error_set_errnof(i32*, i32, i8*) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @strna(i8*) #1

declare dso_local i32 @sd_bus_emit_properties_changed(i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_get_bus(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
