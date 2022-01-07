; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_print_fs_perms.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_print_fs_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32*, i32* }

@MAXNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"---- Permissions on %s \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Local permissions:\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Descendent permissions:\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Local+Descendent permissions:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @print_fs_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_fs_perms(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  %10 = load i32, i32* @MAXNAMELEN, align 4
  %11 = add nsw i32 %10, 32
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_10__* @uu_list_first(i32 %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %3, align 8
  br label %19

19:                                               ; preds = %67, %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %73

22:                                               ; preds = %19
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %31 = trunc i64 %12 to i32
  %32 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @snprintf(i8* %14, i32 %31, i8* %32, i8* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = call i32 @strlen(i8* %14)
  %41 = sub nsw i32 70, %40
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %46, %22
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %9, align 4
  %45 = icmp sgt i32 %43, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %42

48:                                               ; preds = %42
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @print_set_creat_perms(i32* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* @B_TRUE, align 4
  %54 = load i32, i32* @B_FALSE, align 4
  %55 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %56 = call i32 @print_uge_deleg_perms(i32* %52, i32 %53, i32 %54, i8* %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @B_FALSE, align 4
  %59 = load i32, i32* @B_TRUE, align 4
  %60 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %61 = call i32 @print_uge_deleg_perms(i32* %57, i32 %58, i32 %59, i8* %60)
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @B_TRUE, align 4
  %64 = load i32, i32* @B_TRUE, align 4
  %65 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %66 = call i32 @print_uge_deleg_perms(i32* %62, i32 %63, i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %48
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = call %struct.TYPE_10__* @uu_list_next(i32 %70, %struct.TYPE_10__* %71)
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %3, align 8
  br label %19

73:                                               ; preds = %19
  %74 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %74)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_10__* @uu_list_first(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @print_set_creat_perms(i32*) #2

declare dso_local i32 @print_uge_deleg_perms(i32*, i32, i32, i8*) #2

declare dso_local %struct.TYPE_10__* @uu_list_next(i32, %struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
