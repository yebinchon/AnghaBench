; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-manager.c_manager_process_link.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-manager.c_manager_process_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Found new link %i/%s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Removing link %i/%s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to process RTNL link message: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, i8*)* @manager_process_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_process_link(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %8, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = call i32 @assert(%struct.TYPE_18__* %16)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %19 = call i32 @assert(%struct.TYPE_18__* %18)
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = call i32 @assert(%struct.TYPE_18__* %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = call i32 @sd_netlink_message_get_type(%struct.TYPE_18__* %22, i32* %9)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %96

27:                                               ; preds = %3
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %29 = call i32 @sd_rtnl_message_link_get_ifindex(%struct.TYPE_18__* %28, i32* %11)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %96

33:                                               ; preds = %27
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @INT_TO_PTR(i32 %37)
  %39 = call %struct.TYPE_19__* @hashmap_get(i32 %36, i32 %38)
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %10, align 8
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %95 [
    i32 128, label %41
    i32 129, label %79
  ]

41:                                               ; preds = %33
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %43 = icmp ne %struct.TYPE_19__* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %47 = icmp ne %struct.TYPE_19__* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @link_new(%struct.TYPE_18__* %49, %struct.TYPE_19__** %10, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %96

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = call i32 @link_process_rtnl(%struct.TYPE_19__* %57, %struct.TYPE_18__* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %96

63:                                               ; preds = %56
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %65 = call i32 @link_update(%struct.TYPE_19__* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %96

69:                                               ; preds = %63
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @log_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %69
  br label %95

79:                                               ; preds = %33
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %81 = icmp ne %struct.TYPE_19__* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %91 = call i32 @link_remove_user(%struct.TYPE_19__* %90)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %93 = call i32 @link_free(%struct.TYPE_19__* %92)
  br label %94

94:                                               ; preds = %82, %79
  br label %95

95:                                               ; preds = %33, %94, %78
  store i32 0, i32* %4, align 4
  br label %99

96:                                               ; preds = %68, %62, %54, %32, %26
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @log_warning_errno(i32 %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %96, %95
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @assert(%struct.TYPE_18__*) #1

declare dso_local i32 @sd_netlink_message_get_type(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @sd_rtnl_message_link_get_ifindex(%struct.TYPE_18__*, i32*) #1

declare dso_local %struct.TYPE_19__* @hashmap_get(i32, i32) #1

declare dso_local i32 @INT_TO_PTR(i32) #1

declare dso_local i32 @link_new(%struct.TYPE_18__*, %struct.TYPE_19__**, i32) #1

declare dso_local i32 @link_process_rtnl(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @link_update(%struct.TYPE_19__*) #1

declare dso_local i32 @log_debug(i8*, i32, i32) #1

declare dso_local i32 @link_remove_user(%struct.TYPE_19__*) #1

declare dso_local i32 @link_free(%struct.TYPE_19__*) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
