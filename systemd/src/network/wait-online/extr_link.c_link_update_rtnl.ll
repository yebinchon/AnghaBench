; ModuleID = '/home/carl/AnghaBench/systemd/src/network/wait-online/extr_link.c_link_update_rtnl.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/wait-online/extr_link.c_link_update_rtnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_10__*, i32 }

@IFLA_IFNAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @link_update_rtnl(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_10__* %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = call i32 @assert(%struct.TYPE_10__* %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = call i32 @assert(%struct.TYPE_10__* %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = call i32 @sd_rtnl_message_link_get_flags(%struct.TYPE_10__* %17, i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = load i32, i32* @IFLA_IFNAME, align 4
  %28 = call i32 @sd_netlink_message_read_string(%struct.TYPE_10__* %26, i32 %27, i8** %6)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %83

33:                                               ; preds = %25
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @streq(i32 %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %82, label %40

40:                                               ; preds = %33
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @strdup(i8* %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %83

48:                                               ; preds = %40
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.TYPE_10__* @hashmap_remove(i32 %53, i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = icmp eq %struct.TYPE_10__* %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert_se(i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @free_and_replace(i32 %64, i8* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = call i32 @hashmap_put(i32 %71, i32 %74, %struct.TYPE_10__* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %48
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %83

81:                                               ; preds = %48
  br label %82

82:                                               ; preds = %81, %33
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %79, %45, %31, %23
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @sd_rtnl_message_link_get_flags(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @sd_netlink_message_read_string(%struct.TYPE_10__*, i32, i8**) #1

declare dso_local i32 @streq(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local %struct.TYPE_10__* @hashmap_remove(i32, i32) #1

declare dso_local i32 @free_and_replace(i32, i8*) #1

declare dso_local i32 @hashmap_put(i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
