; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_deserialize_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_mount.c_mount_deserialize_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to parse state value: %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to parse result value: %s\00", align 1
@MOUNT_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"reload-result\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed to parse reload result value: %s\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"n-retry-umount\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Failed to parse n-retry-umount value: %s\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"control-pid\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Failed to parse control-pid value: %s\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"control-command\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Failed to parse exec-command value: %s\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Unknown serialization key: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*)* @mount_deserialize_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_deserialize_item(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.TYPE_3__* @MOUNT(i8* %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @assert(i8* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @assert(i8* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @assert(i8* %21)
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @assert(i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @streq(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @mount_state_from_string(i8* %29)
  store i32 %30, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @log_unit_debug(i8* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %152

41:                                               ; preds = %4
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @streq(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @mount_result_from_string(i8* %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @log_unit_debug(i8* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %63

54:                                               ; preds = %45
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @MOUNT_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 6
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %50
  br label %151

64:                                               ; preds = %41
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @streq(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %64
  %69 = load i8*, i8** %7, align 8
  %70 = call i64 @mount_result_from_string(i8* %69)
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @log_unit_debug(i8* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  br label %86

77:                                               ; preds = %68
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* @MOUNT_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 5
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %73
  br label %150

87:                                               ; preds = %64
  %88 = load i8*, i8** %6, align 8
  %89 = call i64 @streq(i8* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = call i32 @safe_atou(i8* %92, i32* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i8*, i8** %5, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @log_unit_debug(i8* %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %98, %91
  br label %149

103:                                              ; preds = %87
  %104 = load i8*, i8** %6, align 8
  %105 = call i64 @streq(i8* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load i8*, i8** %7, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = call i64 @parse_pid(i8* %108, i32* %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i8*, i8** %5, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @log_unit_debug(i8* %114, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %113, %107
  br label %148

118:                                              ; preds = %103
  %119 = load i8*, i8** %6, align 8
  %120 = call i64 @streq(i8* %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %143

122:                                              ; preds = %118
  %123 = load i8*, i8** %7, align 8
  %124 = call i64 @mount_exec_command_from_string(i8* %123)
  store i64 %124, i64* %14, align 8
  %125 = load i64, i64* %14, align 8
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i8*, i8** %5, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @log_unit_debug(i8* %128, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i8* %129)
  br label %142

131:                                              ; preds = %122
  %132 = load i64, i64* %14, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %14, align 8
  %139 = add nsw i64 %137, %138
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %131, %127
  br label %147

143:                                              ; preds = %118
  %144 = load i8*, i8** %5, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @log_unit_debug(i8* %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %143, %142
  br label %148

148:                                              ; preds = %147, %117
  br label %149

149:                                              ; preds = %148, %102
  br label %150

150:                                              ; preds = %149, %86
  br label %151

151:                                              ; preds = %150, %63
  br label %152

152:                                              ; preds = %151, %40
  ret i32 0
}

declare dso_local %struct.TYPE_3__* @MOUNT(i8*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @mount_state_from_string(i8*) #1

declare dso_local i32 @log_unit_debug(i8*, i8*, i8*) #1

declare dso_local i64 @mount_result_from_string(i8*) #1

declare dso_local i32 @safe_atou(i8*, i32*) #1

declare dso_local i64 @parse_pid(i8*, i32*) #1

declare dso_local i64 @mount_exec_command_from_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
