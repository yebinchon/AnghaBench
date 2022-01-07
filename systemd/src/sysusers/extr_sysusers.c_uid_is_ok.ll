; ModuleID = '/home/carl/AnghaBench/systemd/src/sysusers/extr_sysusers.c_uid_is_ok.c'
source_filename = "/home/carl/AnghaBench/systemd/src/sysusers/extr_sysusers.c_uid_is_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%struct.group = type { i8* }
%struct.TYPE_3__ = type { i8* }

@todo_uids = common dso_local global i32 0, align 4
@todo_gids = common dso_local global i32 0, align 4
@database_by_uid = common dso_local global i32 0, align 4
@database_by_gid = common dso_local global i32 0, align 4
@arg_root = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @uid_is_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uid_is_ok(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca %struct.group*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @todo_uids, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @UID_TO_PTR(i64 %13)
  %15 = call %struct.TYPE_3__* @ordered_hashmap_get(i32 %12, i32 %14)
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %108

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i32, i32* @todo_gids, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @GID_TO_PTR(i64 %23)
  %25 = call %struct.TYPE_3__* @ordered_hashmap_get(i32 %22, i32 %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %11, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @streq(i8* %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %108

36:                                               ; preds = %28, %21
  br label %37

37:                                               ; preds = %36, %18
  %38 = load i32, i32* @database_by_uid, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @UID_TO_PTR(i64 %39)
  %41 = call i64 @hashmap_contains(i32 %38, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %108

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32, i32* @database_by_gid, align 4
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @GID_TO_PTR(i64 %49)
  %51 = call i8* @hashmap_get(i32 %48, i32 %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @streq(i8* %55, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %108

60:                                               ; preds = %54, %47
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i32, i32* @arg_root, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %107, label %64

64:                                               ; preds = %61
  store i32 0, i32* @errno, align 4
  %65 = load i64, i64* %5, align 8
  %66 = call %struct.passwd* @getpwuid(i64 %65)
  store %struct.passwd* %66, %struct.passwd** %8, align 8
  %67 = load %struct.passwd*, %struct.passwd** %8, align 8
  %68 = icmp ne %struct.passwd* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %108

70:                                               ; preds = %64
  %71 = load i32, i32* @errno, align 4
  %72 = load i32, i32* @ENOENT, align 4
  %73 = call i32 @IN_SET(i32 %71, i32 0, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @errno, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %108

78:                                               ; preds = %70
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  store i32 0, i32* @errno, align 4
  %82 = load i64, i64* %5, align 8
  %83 = trunc i64 %82 to i32
  %84 = call %struct.group* @getgrgid(i32 %83)
  store %struct.group* %84, %struct.group** %9, align 8
  %85 = load %struct.group*, %struct.group** %9, align 8
  %86 = icmp ne %struct.group* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.group*, %struct.group** %9, align 8
  %89 = getelementptr inbounds %struct.group, %struct.group* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @streq(i8* %90, i8* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %108

95:                                               ; preds = %87
  br label %105

96:                                               ; preds = %81
  %97 = load i32, i32* @errno, align 4
  %98 = load i32, i32* @ENOENT, align 4
  %99 = call i32 @IN_SET(i32 %97, i32 0, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* @errno, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %108

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %95
  br label %106

106:                                              ; preds = %105, %78
  br label %107

107:                                              ; preds = %106, %61
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %101, %94, %75, %69, %59, %43, %35, %17
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.TYPE_3__* @ordered_hashmap_get(i32, i32) #1

declare dso_local i32 @UID_TO_PTR(i64) #1

declare dso_local i32 @GID_TO_PTR(i64) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i64 @hashmap_contains(i32, i32) #1

declare dso_local i8* @hashmap_get(i32, i32) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local %struct.group* @getgrgid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
