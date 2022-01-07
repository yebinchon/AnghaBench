; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dsm/extr_access.c_add_item.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dsm/extr_access.c_add_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.vlc_readdir_helper = type { i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"smb://%s%s%s\00", align 1
@ITEM_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.vlc_readdir_helper*, i8*, i32)* @add_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_item(%struct.TYPE_3__* %0, %struct.vlc_readdir_helper* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.vlc_readdir_helper*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store %struct.vlc_readdir_helper* %1, %struct.vlc_readdir_helper** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i8* @vlc_uri_encode(i8* %14)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %19, i32* %5, align 4
  br label %68

20:                                               ; preds = %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %31, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 47
  br label %42

42:                                               ; preds = %28, %20
  %43 = phi i1 [ false, %20 ], [ %41, %28 ]
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %45, i8** %13, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %49, i8* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %57, i32* %5, align 4
  br label %68

58:                                               ; preds = %42
  %59 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %7, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @ITEM_NET, align 4
  %64 = call i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper* %59, i8* %60, i32* null, i8* %61, i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %58, %56, %18
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i8* @vlc_uri_encode(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_readdir_helper_additem(%struct.vlc_readdir_helper*, i8*, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
