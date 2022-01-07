; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLAddAllowedSubcommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLAddAllowedSubcommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*** }

@USER_COMMAND_BITS_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ACLAddAllowedSubcommand(%struct.TYPE_3__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32***, i32**** %9, align 8
  %11 = icmp eq i32*** %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32, i32* @USER_COMMAND_BITS_COUNT, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = call i32*** @zcalloc(i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32*** %17, i32**** %19, align 8
  br label %20

20:                                               ; preds = %12, %3
  store i64 0, i64* %7, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32***, i32**** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i32**, i32*** %23, i64 %24
  %26 = load i32**, i32*** %25, align 8
  %27 = icmp ne i32** %26, null
  br i1 %27, label %28, label %58

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %54, %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32***, i32**** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i32**, i32*** %32, i64 %33
  %35 = load i32**, i32*** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %29
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32***, i32**** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i32**, i32*** %43, i64 %44
  %46 = load i32**, i32*** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strcasecmp(i32* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  br label %96

54:                                               ; preds = %40
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %29

57:                                               ; preds = %29
  br label %58

58:                                               ; preds = %57, %20
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %59, 2
  store i64 %60, i64* %7, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32***, i32**** %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i32**, i32*** %63, i64 %64
  %66 = load i32**, i32*** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32** @zrealloc(i32** %66, i32 %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32***, i32**** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds i32**, i32*** %73, i64 %74
  store i32** %70, i32*** %75, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32* @sdsnew(i8* %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32***, i32**** %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds i32**, i32*** %80, i64 %81
  %83 = load i32**, i32*** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = sub nsw i64 %84, 2
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  store i32* %77, i32** %86, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32***, i32**** %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds i32**, i32*** %89, i64 %90
  %92 = load i32**, i32*** %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = sub nsw i64 %93, 1
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %58, %53
  ret void
}

declare dso_local i32*** @zcalloc(i32) #1

declare dso_local i32 @strcasecmp(i32*, i8*) #1

declare dso_local i32** @zrealloc(i32**, i32) #1

declare dso_local i32* @sdsnew(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
