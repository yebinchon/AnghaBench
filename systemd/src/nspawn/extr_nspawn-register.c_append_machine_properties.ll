; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-register.c_append_machine_properties.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-register.c_append_machine_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"(sv)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"DevicePolicy\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"DeviceAllow\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"a(ss)\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"/dev/net/tun\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"rwm\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"char-pts\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@CUSTOM_MOUNT_BIND = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"Bind mount source %s not found, ignoring: %m\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Failed to stat %s: %m\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Failed to append message arguments: %m\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"KillSignal\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"KillMode\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"mixed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32)* @append_machine_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_machine_properties(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 (i32*, i8*, i8*, i8*, ...) @sd_bus_message_append(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @bus_log_create_error(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %117

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 (i32*, i8*, i8*, i8*, ...) @sd_bus_message_append(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @bus_log_create_error(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %117

30:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %92, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %95

35:                                               ; preds = %31
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %12, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CUSTOM_MOUNT_BIND, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %92

46:                                               ; preds = %35
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @is_device_node(i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @log_debug_errno(i32 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %59)
  br label %92

61:                                               ; preds = %46
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, ...) @log_error_errno(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %68)
  store i32 %69, i32* %5, align 4
  br label %117

70:                                               ; preds = %61
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %84 = call i32 (i32*, i8*, i8*, i8*, ...) @sd_bus_message_append(i32* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 %77, i8* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = load i32, i32* %11, align 4
  %89 = call i32 (i32, i8*, ...) @log_error_errno(i32 %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  store i32 %89, i32* %5, align 4
  br label %117

90:                                               ; preds = %73
  br label %91

91:                                               ; preds = %90, %70
  br label %92

92:                                               ; preds = %91, %55, %45
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %31

95:                                               ; preds = %31
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %95
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (i32*, i8*, i8*, i8*, ...) @sd_bus_message_append(i32* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @bus_log_create_error(i32 %105)
  store i32 %106, i32* %5, align 4
  br label %117

107:                                              ; preds = %98
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 (i32*, i8*, i8*, i8*, ...) @sd_bus_message_append(i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @bus_log_create_error(i32 %113)
  store i32 %114, i32* %5, align 4
  br label %117

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %95
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %112, %104, %87, %64, %27, %19
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @bus_log_create_error(i32) #1

declare dso_local i32 @is_device_node(i32) #1

declare dso_local i32 @log_debug_errno(i32, i8*, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
