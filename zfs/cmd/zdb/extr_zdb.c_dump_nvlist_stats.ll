; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_nvlist_stats.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_nvlist_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32*, i32*, i32*, i64, i32 }

@NV_ENCODE_XDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"\0A\0AZFS Label NVList Config Stats:\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"  %d bytes used, %d bytes free (using %4.1f%%)\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%12s %4d %6d bytes (%5.2f%%)\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"integers:\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"strings:\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"booleans:\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%12s %4d %6d bytes (%5.2f%%)\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"nvlists:\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"%12s %4d %6d bytes average\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"leaf vdevs:\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%24d bytes largest\0A\00", align 1
@dump_opt = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c"  space for %d additional leaf vdevs\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @dump_nvlist_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_nvlist_stats(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 64, i1 false)
  store i64 0, i64* %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %13 = call i32 @nvlist_alloc(i32** %12, i32 0, i32 0)
  %14 = call i32 @VERIFY0(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %16 = call i32 @nvlist_alloc(i32** %15, i32 0, i32 0)
  %17 = call i32 @VERIFY0(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %19 = call i32 @nvlist_alloc(i32** %18, i32 0, i32 0)
  %20 = call i32 @VERIFY0(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @NV_ENCODE_XDR, align 4
  %24 = call i32 @nvlist_size(i32* %22, i64* %9, i32 %23)
  %25 = call i32 @VERIFY0(i32 %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @NV_ENCODE_XDR, align 4
  %29 = call i32 @nvlist_size(i32* %27, i64* %8, i32 %28)
  %30 = call i32 @VERIFY0(i32 %29)
  %31 = load i64, i64* %8, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* %8, align 8
  %38 = uitofp i64 %37 to double
  %39 = fmul double 1.000000e+02, %38
  %40 = load i64, i64* %4, align 8
  %41 = uitofp i64 %40 to double
  %42 = fdiv double %39, %41
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %36, double %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @collect_nvlist_stats(i32* %44, %struct.TYPE_3__* %5)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @NV_ENCODE_XDR, align 4
  %49 = call i32 @nvlist_size(i32* %47, i64* %6, i32 %48)
  %50 = call i32 @VERIFY0(i32 %49)
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @fnvlist_num_pairs(i32* %58)
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* %6, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* %6, align 8
  %64 = uitofp i64 %63 to double
  %65 = fmul double 1.000000e+02, %64
  %66 = load i64, i64* %8, align 8
  %67 = uitofp i64 %66 to double
  %68 = fdiv double %65, %67
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %62, double %68)
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @NV_ENCODE_XDR, align 4
  %73 = call i32 @nvlist_size(i32* %71, i64* %6, i32 %72)
  %74 = call i32 @VERIFY0(i32 %73)
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %6, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = call i64 @fnvlist_num_pairs(i32* %82)
  %84 = trunc i64 %83 to i32
  %85 = load i64, i64* %6, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i64, i64* %6, align 8
  %88 = uitofp i64 %87 to double
  %89 = fmul double 1.000000e+02, %88
  %90 = load i64, i64* %8, align 8
  %91 = uitofp i64 %90 to double
  %92 = fdiv double %89, %91
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %86, double %92)
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @NV_ENCODE_XDR, align 4
  %97 = call i32 @nvlist_size(i32* %95, i64* %6, i32 %96)
  %98 = call i32 @VERIFY0(i32 %97)
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %6, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %6, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = add i64 %103, %102
  store i64 %104, i64* %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @fnvlist_num_pairs(i32* %106)
  %108 = trunc i64 %107 to i32
  %109 = load i64, i64* %6, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i64, i64* %6, align 8
  %112 = uitofp i64 %111 to double
  %113 = fmul double 1.000000e+02, %112
  %114 = load i64, i64* %8, align 8
  %115 = uitofp i64 %114 to double
  %116 = fdiv double %113, %115
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %108, i32 %110, double %116)
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* %7, align 8
  %120 = sub i64 %118, %119
  store i64 %120, i64* %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %6, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i64, i64* %6, align 8
  %126 = uitofp i64 %125 to double
  %127 = fmul double 1.000000e+02, %126
  %128 = load i64, i64* %8, align 8
  %129 = uitofp i64 %128 to double
  %130 = fdiv double %127, %129
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %122, i32 %124, double %130)
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ugt i64 %133, 0
  br i1 %134, label %135, label %166

135:                                              ; preds = %2
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = udiv i64 %137, %139
  store i64 %140, i64* %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %10, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 %142, i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %148)
  %150 = load i32*, i32** @dump_opt, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 108
  %152 = load i32, i32* %151, align 4
  %153 = icmp sge i32 %152, 3
  br i1 %153, label %154, label %165

154:                                              ; preds = %135
  %155 = load i64, i64* %10, align 8
  %156 = icmp ugt i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load i64, i64* %4, align 8
  %159 = load i64, i64* %8, align 8
  %160 = sub i64 %158, %159
  %161 = load i64, i64* %10, align 8
  %162 = udiv i64 %160, %161
  %163 = trunc i64 %162 to i32
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %157, %154, %135
  br label %166

166:                                              ; preds = %165, %2
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @nvlist_free(i32* %169)
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @nvlist_free(i32* %172)
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @nvlist_free(i32* %175)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @VERIFY0(i32) #2

declare dso_local i32 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i32 @nvlist_size(i32*, i64*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @collect_nvlist_stats(i32*, %struct.TYPE_3__*) #2

declare dso_local i64 @fnvlist_num_pairs(i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
