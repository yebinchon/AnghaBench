; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_item.c_rdh_should_match_idx.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_item.c_rdh_should_match_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_readdir_helper = type { i64, %struct.rdh_slave** }
%struct.rdh_slave = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_readdir_helper*, %struct.rdh_slave*)* @rdh_should_match_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdh_should_match_idx(%struct.vlc_readdir_helper* %0, %struct.rdh_slave* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_readdir_helper*, align 8
  %5 = alloca %struct.rdh_slave*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.rdh_slave*, align 8
  %9 = alloca i8*, align 8
  store %struct.vlc_readdir_helper* %0, %struct.vlc_readdir_helper** %4, align 8
  store %struct.rdh_slave* %1, %struct.rdh_slave** %5, align 8
  %10 = load %struct.rdh_slave*, %struct.rdh_slave** %5, align 8
  %11 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @strrchr(i32 %12, i8 signext 46)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strcasecmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %93

24:                                               ; preds = %17
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %89, %24
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %4, align 8
  %28 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %92

31:                                               ; preds = %25
  %32 = load %struct.vlc_readdir_helper*, %struct.vlc_readdir_helper** %4, align 8
  %33 = getelementptr inbounds %struct.vlc_readdir_helper, %struct.vlc_readdir_helper* %32, i32 0, i32 1
  %34 = load %struct.rdh_slave**, %struct.rdh_slave*** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.rdh_slave*, %struct.rdh_slave** %34, i64 %35
  %37 = load %struct.rdh_slave*, %struct.rdh_slave** %36, align 8
  store %struct.rdh_slave* %37, %struct.rdh_slave** %8, align 8
  %38 = load %struct.rdh_slave*, %struct.rdh_slave** %8, align 8
  %39 = icmp eq %struct.rdh_slave* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = load %struct.rdh_slave*, %struct.rdh_slave** %8, align 8
  %42 = load %struct.rdh_slave*, %struct.rdh_slave** %5, align 8
  %43 = icmp eq %struct.rdh_slave* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %31
  br label %89

45:                                               ; preds = %40
  %46 = load %struct.rdh_slave*, %struct.rdh_slave** %8, align 8
  %47 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.rdh_slave*, %struct.rdh_slave** %5, align 8
  %52 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %89

58:                                               ; preds = %45
  %59 = load %struct.rdh_slave*, %struct.rdh_slave** %5, align 8
  %60 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.rdh_slave*, %struct.rdh_slave** %8, align 8
  %63 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.rdh_slave*, %struct.rdh_slave** %5, align 8
  %66 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @strlen(i32 %67)
  %69 = sub nsw i64 %68, 3
  %70 = call i64 @strncasecmp(i32 %61, i32 %64, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %89

73:                                               ; preds = %58
  %74 = load %struct.rdh_slave*, %struct.rdh_slave** %8, align 8
  %75 = getelementptr inbounds %struct.rdh_slave, %struct.rdh_slave* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @strrchr(i32 %76, i8 signext 46)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %89

81:                                               ; preds = %73
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %9, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i64 @strcasecmp(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %93

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %80, %72, %57, %44
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %7, align 8
  br label %25

92:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %87, %23, %16
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i32, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
