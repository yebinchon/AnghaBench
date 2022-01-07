; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }
%struct.vlc_http_resource = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 (%struct.vlc_http_resource*, %struct.vlc_http_msg*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_http_msg* @vlc_http_res_open(%struct.vlc_http_resource* %0, i8* %1) #0 {
  %3 = alloca %struct.vlc_http_msg*, align 8
  %4 = alloca %struct.vlc_http_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vlc_http_msg*, align 8
  %7 = alloca %struct.vlc_http_msg*, align 8
  %8 = alloca i32, align 4
  store %struct.vlc_http_resource* %0, %struct.vlc_http_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %9

9:                                                ; preds = %70, %2
  %10 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.vlc_http_msg* @vlc_http_res_req(%struct.vlc_http_resource* %10, i8* %11)
  store %struct.vlc_http_msg* %12, %struct.vlc_http_msg** %6, align 8
  %13 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %14 = icmp eq %struct.vlc_http_msg* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %3, align 8
  br label %92

19:                                               ; preds = %9
  %20 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %21 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %24 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %27 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %30 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %33 = call %struct.vlc_http_msg* @vlc_http_mgr_request(i32 %22, i32 %25, i32 %28, i32 %31, %struct.vlc_http_msg* %32)
  store %struct.vlc_http_msg* %33, %struct.vlc_http_msg** %7, align 8
  %34 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %6, align 8
  %35 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %34)
  %36 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %7, align 8
  %37 = call %struct.vlc_http_msg* @vlc_http_msg_get_final(%struct.vlc_http_msg* %36)
  store %struct.vlc_http_msg* %37, %struct.vlc_http_msg** %7, align 8
  %38 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %7, align 8
  %39 = icmp eq %struct.vlc_http_msg* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %19
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %3, align 8
  br label %92

41:                                               ; preds = %19
  %42 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %7, align 8
  %43 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %44 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @vlc_http_mgr_get_jar(i32 %45)
  %47 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %48 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %51 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @vlc_http_msg_get_cookies(%struct.vlc_http_msg* %42, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %7, align 8
  %55 = call i32 @vlc_http_msg_get_status(%struct.vlc_http_msg* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 200
  br i1 %57, label %61, label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 599
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %41
  br label %89

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 406
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %67 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %7, align 8
  %72 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %71)
  %73 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %74 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  br label %9

75:                                               ; preds = %65, %62
  %76 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %77 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64 (%struct.vlc_http_resource*, %struct.vlc_http_msg*, i8*)*, i64 (%struct.vlc_http_resource*, %struct.vlc_http_msg*, i8*)** %79, align 8
  %81 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %4, align 8
  %82 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %7, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i64 %80(%struct.vlc_http_resource* %81, %struct.vlc_http_msg* %82, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %89

87:                                               ; preds = %75
  %88 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %7, align 8
  store %struct.vlc_http_msg* %88, %struct.vlc_http_msg** %3, align 8
  br label %92

89:                                               ; preds = %86, %61
  %90 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %7, align 8
  %91 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %90)
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %3, align 8
  br label %92

92:                                               ; preds = %89, %87, %40, %18
  %93 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %3, align 8
  ret %struct.vlc_http_msg* %93
}

declare dso_local %struct.vlc_http_msg* @vlc_http_res_req(%struct.vlc_http_resource*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.vlc_http_msg* @vlc_http_mgr_request(i32, i32, i32, i32, %struct.vlc_http_msg*) #1

declare dso_local i32 @vlc_http_msg_destroy(%struct.vlc_http_msg*) #1

declare dso_local %struct.vlc_http_msg* @vlc_http_msg_get_final(%struct.vlc_http_msg*) #1

declare dso_local i32 @vlc_http_msg_get_cookies(%struct.vlc_http_msg*, i32, i32, i32) #1

declare dso_local i32 @vlc_http_mgr_get_jar(i32) #1

declare dso_local i32 @vlc_http_msg_get_status(%struct.vlc_http_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
