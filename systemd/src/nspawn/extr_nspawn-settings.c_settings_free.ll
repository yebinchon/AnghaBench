; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-settings.c_settings_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-settings.c_settings_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @settings_free(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = icmp ne %struct.TYPE_6__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %144

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 35
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strv_free(i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 34
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strv_free(i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 33
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @free(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 32
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @free(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 31
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @free(i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 30
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @free(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 29
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strv_free(i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 28
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strv_free(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 27
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rlimit_free_all(i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 26
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @free(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 25
  %50 = call i32 @cpu_set_reset(i32* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 24
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strv_free(i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 23
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strv_free(i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 22
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strv_free(i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 21
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @strv_free(i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 20
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @free(i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 19
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @free(i32 %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 18
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @expose_port_free_all(i32 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 17
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 16
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @custom_mount_free_all(i32 %81, i32 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 15
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @free(i32 %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 14
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @free(i32 %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 13
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 12
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @free_oci_hooks(i32 %96, i32 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 11
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @free_oci_hooks(i32 %103, i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @free_oci_hooks(i32 %110, i32 %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @free(i32 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @sd_bus_message_unref(i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @free(i32 %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @device_node_array_free(i32 %129, i32 %132)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @free(i32 %136)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @strv_free(i32 %140)
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %143 = call %struct.TYPE_6__* @mfree(%struct.TYPE_6__* %142)
  store %struct.TYPE_6__* %143, %struct.TYPE_6__** %2, align 8
  br label %144

144:                                              ; preds = %7, %6
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %145
}

declare dso_local i32 @strv_free(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @rlimit_free_all(i32) #1

declare dso_local i32 @cpu_set_reset(i32*) #1

declare dso_local i32 @expose_port_free_all(i32) #1

declare dso_local i32 @custom_mount_free_all(i32, i32) #1

declare dso_local i32 @free_oci_hooks(i32, i32) #1

declare dso_local i32 @sd_bus_message_unref(i32) #1

declare dso_local i32 @device_node_array_free(i32, i32) #1

declare dso_local %struct.TYPE_6__* @mfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
