; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_buildvm_lib.c_libdef_endmodule.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_buildvm_lib.c_libdef_endmodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@modstate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"  (lua_CFunction)0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"static const uint8_t %s%s[] = {\0A\00", align 1
@LABEL_PREFIX_LIBINIT = common dso_local global i8* null, align 8
@modname = common dso_local global i32 0, align 4
@obuf = common dso_local global i32* null, align 8
@optr = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s%d\0A};\0A#endif\0A\0A\00", align 1
@LIBINIT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @libdef_endmodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libdef_endmodule(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load i32, i32* @modstate, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %65

8:                                                ; preds = %1
  %9 = load i32, i32* @modstate, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %11, %8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** @LABEL_PREFIX_LIBINIT, align 8
  %25 = load i32, i32* @modname, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %24, i32 %25)
  %27 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %27, align 16
  store i32 0, i32* %5, align 4
  %28 = load i32*, i32** @obuf, align 8
  store i32* %28, i32** %4, align 8
  br label %29

29:                                               ; preds = %55, %16
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** @optr, align 8
  %32 = icmp ult i32* %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @sprintf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sge i32 %45, 75
  br i1 %46, label %47, label %54

47:                                               ; preds = %33
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  store i32 0, i32* %5, align 4
  %53 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %53, align 16
  br label %54

54:                                               ; preds = %47, %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %4, align 8
  br label %29

58:                                               ; preds = %29
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %63 = load i32, i32* @LIBINIT_END, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %1
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
