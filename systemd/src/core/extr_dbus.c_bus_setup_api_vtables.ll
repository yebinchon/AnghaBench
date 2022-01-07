; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus.c_bus_setup_api_vtables.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus.c_bus_setup_api_vtables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"/org/freedesktop/systemd1\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"org.freedesktop.systemd1.Manager\00", align 1
@bus_manager_vtable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to register Manager vtable: %m\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"/org/freedesktop/systemd1/job\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"org.freedesktop.systemd1.Job\00", align 1
@bus_job_vtable = common dso_local global i32 0, align 4
@bus_job_find = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to register Job vtable: %m\00", align 1
@bus_job_enumerate = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to add job enumerator: %m\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"/org/freedesktop/systemd1/unit\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"org.freedesktop.systemd1.Unit\00", align 1
@bus_unit_vtable = common dso_local global i32 0, align 4
@bus_unit_find = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to register Unit vtable: %m\00", align 1
@bus_unit_enumerate = common dso_local global i32 0, align 4
@_UNIT_TYPE_MAX = common dso_local global i64 0, align 8
@unit_vtable = common dso_local global %struct.TYPE_2__** null, align 8
@bus_unit_interface_find = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [51 x i8] c"Failed to register type specific vtable for %s: %m\00", align 1
@bus_unit_cgroup_vtable = common dso_local global i32 0, align 4
@bus_unit_cgroup_find = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [56 x i8] c"Failed to register control group unit vtable for %s: %m\00", align 1
@bus_cgroup_vtable = common dso_local global i32 0, align 4
@bus_cgroup_context_find = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [51 x i8] c"Failed to register control group vtable for %s: %m\00", align 1
@bus_exec_vtable = common dso_local global i32 0, align 4
@bus_exec_context_find = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"Failed to register execute vtable for %s: %m\00", align 1
@bus_kill_vtable = common dso_local global i32 0, align 4
@bus_kill_context_find = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [42 x i8] c"Failed to register kill vtable for %s: %m\00", align 1
@mac_selinux_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @bus_setup_api_vtables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_setup_api_vtables(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @assert(i32* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @assert(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @bus_manager_vtable, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @sd_bus_add_object_vtable(i32* %13, i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i32, i8*, ...) @log_error_errno(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 %21, i32* %3, align 4
  br label %174

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @bus_job_vtable, align 4
  %25 = load i32, i32* @bus_job_find, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @sd_bus_add_fallback_vtable(i32* %23, i32* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %24, i32 %25, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i32, i8*, ...) @log_error_errno(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 %32, i32* %3, align 4
  br label %174

33:                                               ; preds = %22
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @bus_job_enumerate, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @sd_bus_add_node_enumerator(i32* %34, i32* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %35, i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32, i8*, ...) @log_error_errno(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32 %42, i32* %3, align 4
  br label %174

43:                                               ; preds = %33
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @bus_unit_vtable, align 4
  %46 = load i32, i32* @bus_unit_find, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @sd_bus_add_fallback_vtable(i32* %44, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %45, i32 %46, i32* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, i8*, ...) @log_error_errno(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  store i32 %53, i32* %3, align 4
  br label %174

54:                                               ; preds = %43
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @bus_unit_enumerate, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @sd_bus_add_node_enumerator(i32* %55, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %56, i32* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i32, i8*, ...) @log_error_errno(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32 %63, i32* %3, align 4
  br label %174

64:                                               ; preds = %54
  store i64 0, i64* %6, align 8
  br label %65

65:                                               ; preds = %170, %64
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @_UNIT_TYPE_MAX, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %173

69:                                               ; preds = %65
  %70 = load i64, i64* %6, align 8
  %71 = call i8* @unit_dbus_interface_from_type(i64 %70)
  store i8* %71, i8** %8, align 8
  %72 = call i32 @assert_se(i8* %71)
  %73 = load i32*, i32** %5, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @unit_vtable, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @bus_unit_interface_find, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @sd_bus_add_fallback_vtable(i32* %73, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %74, i32 %80, i32 %81, i32* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %69
  %87 = load i32, i32* %7, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 (i32, i8*, ...) @log_error_errno(i32 %87, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i8* %88)
  store i32 %89, i32* %3, align 4
  br label %174

90:                                               ; preds = %69
  %91 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @unit_vtable, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %91, i64 %92
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %90
  %99 = load i32*, i32** %5, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* @bus_unit_cgroup_vtable, align 4
  %102 = load i32, i32* @bus_unit_cgroup_find, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @sd_bus_add_fallback_vtable(i32* %99, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %100, i32 %101, i32 %102, i32* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %98
  %108 = load i32, i32* %7, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 (i32, i8*, ...) @log_error_errno(i32 %108, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i8* %109)
  store i32 %110, i32* %3, align 4
  br label %174

111:                                              ; preds = %98
  %112 = load i32*, i32** %5, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* @bus_cgroup_vtable, align 4
  %115 = load i32, i32* @bus_cgroup_context_find, align 4
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @sd_bus_add_fallback_vtable(i32* %112, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %113, i32 %114, i32 %115, i32* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load i32, i32* %7, align 4
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 (i32, i8*, ...) @log_error_errno(i32 %121, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i8* %122)
  store i32 %123, i32* %3, align 4
  br label %174

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124, %90
  %126 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @unit_vtable, align 8
  %127 = load i64, i64* %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %126, i64 %127
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %125
  %134 = load i32*, i32** %5, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = load i32, i32* @bus_exec_vtable, align 4
  %137 = load i32, i32* @bus_exec_context_find, align 4
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @sd_bus_add_fallback_vtable(i32* %134, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %135, i32 %136, i32 %137, i32* %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %133
  %143 = load i32, i32* %7, align 4
  %144 = load i8*, i8** %8, align 8
  %145 = call i32 (i32, i8*, ...) @log_error_errno(i32 %143, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i8* %144)
  store i32 %145, i32* %3, align 4
  br label %174

146:                                              ; preds = %133
  br label %147

147:                                              ; preds = %146, %125
  %148 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @unit_vtable, align 8
  %149 = load i64, i64* %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %148, i64 %149
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %147
  %156 = load i32*, i32** %5, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = load i32, i32* @bus_kill_vtable, align 4
  %159 = load i32, i32* @bus_kill_context_find, align 4
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @sd_bus_add_fallback_vtable(i32* %156, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %157, i32 %158, i32 %159, i32* %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %155
  %165 = load i32, i32* %7, align 4
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 (i32, i8*, ...) @log_error_errno(i32 %165, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i8* %166)
  store i32 %167, i32* %3, align 4
  br label %174

168:                                              ; preds = %155
  br label %169

169:                                              ; preds = %168, %147
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %6, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %6, align 8
  br label %65

173:                                              ; preds = %65
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %164, %142, %120, %107, %86, %61, %51, %40, %30, %19
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_bus_add_object_vtable(i32*, i32*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @sd_bus_add_fallback_vtable(i32*, i32*, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @sd_bus_add_node_enumerator(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @assert_se(i8*) #1

declare dso_local i8* @unit_dbus_interface_from_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
