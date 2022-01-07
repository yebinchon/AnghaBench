; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_xa.c_iso9660_get_xa_attr_str.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/iso9660/extr_xa.c_iso9660_get_xa_attr_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XA_ATTR_DIRECTORY = common dso_local global i32 0, align 4
@XA_ATTR_CDDA = common dso_local global i32 0, align 4
@XA_ATTR_INTERLEAVED = common dso_local global i32 0, align 4
@XA_ATTR_MODE2FORM2 = common dso_local global i32 0, align 4
@XA_ATTR_MODE2FORM1 = common dso_local global i32 0, align 4
@XA_PERM_XUSR = common dso_local global i32 0, align 4
@XA_PERM_RUSR = common dso_local global i32 0, align 4
@XA_PERM_XGRP = common dso_local global i32 0, align 4
@XA_PERM_RGRP = common dso_local global i32 0, align 4
@XA_PERM_XSYS = common dso_local global i32 0, align 4
@XA_PERM_RSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iso9660_get_xa_attr_str(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i8* (...) @_getbuf()
  store i8* %4, i8** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @uint16_from_be(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @XA_ATTR_DIRECTORY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 100, i32 45
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %13, i8* %15, align 1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @XA_ATTR_CDDA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 97, i32 45
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %22, i8* %24, align 1
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @XA_ATTR_INTERLEAVED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 105, i32 45
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 %31, i8* %33, align 1
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @XA_ATTR_MODE2FORM2, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 50, i32 45
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  store i8 %40, i8* %42, align 1
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @XA_ATTR_MODE2FORM1, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 49, i32 45
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  store i8 %49, i8* %51, align 1
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @XA_PERM_XUSR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 120, i32 45
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 5
  store i8 %58, i8* %60, align 1
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @XA_PERM_RUSR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 114, i32 45
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 6
  store i8 %67, i8* %69, align 1
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @XA_PERM_XGRP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 120, i32 45
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 7
  store i8 %76, i8* %78, align 1
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @XA_PERM_RGRP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 114, i32 45
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 8
  store i8 %85, i8* %87, align 1
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* @XA_PERM_XSYS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 120, i32 45
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 9
  store i8 %94, i8* %96, align 1
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* @XA_PERM_RSYS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 114, i32 45
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 10
  store i8 %103, i8* %105, align 1
  %106 = load i8*, i8** %3, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 11
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %3, align 8
  ret i8* %108
}

declare dso_local i8* @_getbuf(...) #1

declare dso_local i32 @uint16_from_be(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
