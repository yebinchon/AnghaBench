; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_isdbt_setup.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_access.c_isdbt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"dvb-bandwidth\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"dvb-transmission\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dvb-X-\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"modulation\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"fec\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"interleaving\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @isdbt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdbt_setup(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x %struct.TYPE_3__], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [19 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @var_InheritGuardInterval(i32* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i8* @var_InheritInteger(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %9, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i8* @var_InheritInteger(i32* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %70, %3
  %21 = load i32, i32* %11, align 4
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %23, label %73

23:                                               ; preds = %20
  %24 = getelementptr inbounds [19 x i8], [19 x i8]* %12, i64 0, i64 0
  %25 = call i32 @memcpy(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %26 = load i32, i32* %11, align 4
  %27 = add i32 97, %26
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [19 x i8], [19 x i8]* %12, i64 0, i64 4
  store i8 %28, i8* %29, align 4
  %30 = getelementptr inbounds [19 x i8], [19 x i8]* %12, i64 0, i64 0
  %31 = getelementptr inbounds i8, i8* %30, i64 6
  %32 = call i32 @strcpy(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds [19 x i8], [19 x i8]* %12, i64 0, i64 0
  %35 = call i32 @var_InheritModulation(i32* %33, i8* %34)
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  store i32 %35, i32* %39, align 4
  %40 = getelementptr inbounds [19 x i8], [19 x i8]* %12, i64 0, i64 0
  %41 = getelementptr inbounds i8, i8* %40, i64 6
  %42 = call i32 @strcpy(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds [19 x i8], [19 x i8]* %12, i64 0, i64 0
  %45 = call i32 @var_InheritCodeRate(i32* %43, i8* %44)
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 %45, i32* %49, align 8
  %50 = getelementptr inbounds [19 x i8], [19 x i8]* %12, i64 0, i64 0
  %51 = getelementptr inbounds i8, i8* %50, i64 6
  %52 = call i32 @strcpy(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds [19 x i8], [19 x i8]* %12, i64 0, i64 0
  %55 = call i8* @var_InheritInteger(i32* %53, i8* %54)
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i8* %55, i8** %59, align 8
  %60 = getelementptr inbounds [19 x i8], [19 x i8]* %12, i64 0, i64 0
  %61 = getelementptr inbounds i8, i8* %60, i64 6
  %62 = call i32 @strcpy(i8* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds [19 x i8], [19 x i8]* %12, i64 0, i64 0
  %65 = call i8* @var_InheritInteger(i32* %63, i8* %64)
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i8* %65, i8** %69, align 8
  br label %70

70:                                               ; preds = %23
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %20

73:                                               ; preds = %20
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %7, i64 0, i64 0
  %80 = call i32 @dvb_set_isdbt(i32* %74, i32 %75, i8* %76, i32 %77, i8* %78, %struct.TYPE_3__* %79)
  ret i32 %80
}

declare dso_local i8* @var_InheritGuardInterval(i32*) #1

declare dso_local i8* @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @var_InheritModulation(i32*, i8*) #1

declare dso_local i32 @var_InheritCodeRate(i32*, i8*) #1

declare dso_local i32 @dvb_set_isdbt(i32*, i32, i8*, i32, i8*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
