; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-objects.c_server.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_test-bus-objects.c_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"/foo\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"org.freedesktop.systemd.test\00", align 1
@vtable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"org.freedesktop.systemd.test2\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"/value\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"org.freedesktop.systemd.ValueTest\00", align 1
@vtable2 = common dso_local global i32 0, align 4
@enumerator_callback = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"/value/a\00", align 1
@enumerator2_callback = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Entering event loop on server\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Loop!\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to process requests: %m\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Failed to wait: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @server(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.context*
  store %struct.context* %8, %struct.context** %3, align 8
  store i32* null, i32** %4, align 8
  %9 = load %struct.context*, %struct.context** %3, align 8
  %10 = getelementptr inbounds %struct.context, %struct.context* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = call i64 @sd_id128_randomize(i32* %5)
  %12 = icmp sge i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  %15 = call i64 @sd_bus_new(i32** %4)
  %16 = icmp sge i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.context*, %struct.context** %3, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.context*, %struct.context** %3, align 8
  %26 = getelementptr inbounds %struct.context, %struct.context* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @sd_bus_set_fd(i32* %19, i32 %24, i32 %29)
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert_se(i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @sd_bus_set_server(i32* %34, i32 1, i32 %35)
  %37 = icmp sge i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert_se(i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @vtable, align 4
  %42 = load %struct.context*, %struct.context** %3, align 8
  %43 = call i64 @sd_bus_add_object_vtable(i32* %40, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %41, %struct.context* %42)
  %44 = icmp sge i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @vtable, align 4
  %49 = load %struct.context*, %struct.context** %3, align 8
  %50 = call i64 @sd_bus_add_object_vtable(i32* %47, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %48, %struct.context* %49)
  %51 = icmp sge i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert_se(i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @vtable2, align 4
  %56 = call i32 @UINT_TO_PTR(i32 20)
  %57 = call i64 @sd_bus_add_fallback_vtable(i32* %54, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %55, i32* null, i32 %56)
  %58 = icmp sge i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert_se(i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @enumerator_callback, align 4
  %63 = call i64 @sd_bus_add_node_enumerator(i32* %61, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32* null)
  %64 = icmp sge i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert_se(i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @enumerator2_callback, align 4
  %69 = call i64 @sd_bus_add_node_enumerator(i32* %67, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %68, i32* null)
  %70 = icmp sge i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert_se(i32 %71)
  %73 = load i32*, i32** %4, align 8
  %74 = call i64 @sd_bus_add_object_manager(i32* %73, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp sge i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert_se(i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = call i64 @sd_bus_add_object_manager(i32* %78, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp sge i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert_se(i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i64 @sd_bus_start(i32* %83)
  %85 = icmp sge i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert_se(i32 %86)
  %88 = call i32 @log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %89

89:                                               ; preds = %116, %115, %1
  %90 = load %struct.context*, %struct.context** %3, align 8
  %91 = getelementptr inbounds %struct.context, %struct.context* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br i1 %94, label %95, label %117

95:                                               ; preds = %89
  %96 = call i32 @log_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @sd_bus_process(i32* %97, i32* null)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @log_error_errno(i32 %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %118

104:                                              ; preds = %95
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @sd_bus_wait(i32* %108, i32 -1)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @log_error_errno(i32 %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %118

115:                                              ; preds = %107
  br label %89

116:                                              ; preds = %104
  br label %89

117:                                              ; preds = %89
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %112, %101
  %119 = load i32*, i32** %4, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @sd_bus_flush(i32* %122)
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @sd_bus_unref(i32* %124)
  br label %126

126:                                              ; preds = %121, %118
  %127 = load i32, i32* %6, align 4
  %128 = call i8* @INT_TO_PTR(i32 %127)
  ret i8* %128
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_id128_randomize(i32*) #1

declare dso_local i64 @sd_bus_new(i32**) #1

declare dso_local i64 @sd_bus_set_fd(i32*, i32, i32) #1

declare dso_local i64 @sd_bus_set_server(i32*, i32, i32) #1

declare dso_local i64 @sd_bus_add_object_vtable(i32*, i32*, i8*, i8*, i32, %struct.context*) #1

declare dso_local i64 @sd_bus_add_fallback_vtable(i32*, i32*, i8*, i8*, i32, i32*, i32) #1

declare dso_local i32 @UINT_TO_PTR(i32) #1

declare dso_local i64 @sd_bus_add_node_enumerator(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i64 @sd_bus_add_object_manager(i32*, i32*, i8*) #1

declare dso_local i64 @sd_bus_start(i32*) #1

declare dso_local i32 @log_error(i8*) #1

declare dso_local i32 @sd_bus_process(i32*, i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_bus_wait(i32*, i32) #1

declare dso_local i32 @sd_bus_flush(i32*) #1

declare dso_local i32 @sd_bus_unref(i32*) #1

declare dso_local i8* @INT_TO_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
