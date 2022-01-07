; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_register_appid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_classes.c_register_appid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i64, i64, i32 }

@register_appid.szRemoteServerName = internal constant [17 x i8] c"RemoteServerName\00", align 16
@register_appid.szLocalService = internal constant [13 x i8] c"LocalService\00", align 1
@register_appid.szService = internal constant [18 x i8] c"ServiceParameters\00", align 16
@register_appid.szDLL = internal constant [13 x i8] c"DllSurrogate\00", align 1
@register_appid.szActivate = internal constant [18 x i8] c"ActivateAsStorage\00", align 16
@register_appid.szY = internal constant [2 x i8] c"Y\00", align 1
@register_appid.szRunAs = internal constant [6 x i8] c"RunAs\00", align 1
@register_appid.szUser = internal constant [17 x i8] c"Interactive User\00", align 16
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@szAppID = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @register_appid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_appid(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %8 = load i32, i32* @szAppID, align 4
  %9 = call i32 @RegCreateKeyW(i32 %7, i32 %8, i32* %5)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @RegCreateKeyW(i32 %10, i32 %13, i32* %6)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @RegCloseKey(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @msi_reg_set_val_str(i32 %17, i8* null, i8* %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @msi_reg_set_val_str(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @register_appid.szRemoteServerName, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @msi_reg_set_val_str(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @register_appid.szLocalService, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @msi_reg_set_val_str(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @register_appid.szService, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @msi_reg_set_val_str(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @register_appid.szDLL, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @msi_reg_set_val_str(i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @register_appid.szActivate, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @register_appid.szY, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @msi_reg_set_val_str(i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @register_appid.szRunAs, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @register_appid.szUser, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @RegCloseKey(i32 %80)
  %82 = load i32, i32* @ERROR_SUCCESS, align 4
  ret i32 %82
}

declare dso_local i32 @RegCreateKeyW(i32, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @msi_reg_set_val_str(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
