; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/mkisofs/schilytools/mkisofs/extr_multi.c_finish_cl_pl_for_prev_session.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/mkisofs/schilytools/mkisofs/extr_multi.c_finish_cl_pl_for_prev_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_extent_link = type { %struct.dir_extent_link*, %struct.directory_entry* }
%struct.directory_entry = type { i32, i32, i32, %struct.directory_entry*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.directory* }
%struct.directory = type { i32, %struct.TYPE_4__*, %struct.directory*, %struct.directory_entry* }
%struct.TYPE_4__ = type { %struct.directory_entry* }

@re_dirs = common dso_local global %struct.dir_extent_link* null, align 8
@reloc_dir = common dso_local global %struct.TYPE_6__* null, align 8
@INHIBIT_ISO9660_ENTRY = common dso_local global i32 0, align 4
@EX_BAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to locate directory parent\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"PL\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"CL\00", align 1
@cl_dirs = common dso_local global %struct.dir_extent_link* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finish_cl_pl_for_prev_session() #0 {
  %1 = alloca %struct.dir_extent_link*, align 8
  %2 = alloca %struct.directory_entry*, align 8
  %3 = alloca %struct.directory_entry*, align 8
  %4 = alloca %struct.directory*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dir_extent_link*, align 8
  %7 = alloca %struct.dir_extent_link*, align 8
  %8 = load %struct.dir_extent_link*, %struct.dir_extent_link** @re_dirs, align 8
  store %struct.dir_extent_link* %8, %struct.dir_extent_link** %1, align 8
  %9 = load %struct.dir_extent_link*, %struct.dir_extent_link** @re_dirs, align 8
  store %struct.dir_extent_link* %9, %struct.dir_extent_link** %1, align 8
  br label %10

10:                                               ; preds = %111, %0
  %11 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %12 = icmp ne %struct.dir_extent_link* %11, null
  br i1 %12, label %13, label %115

13:                                               ; preds = %10
  %14 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %15 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %14, i32 0, i32 1
  %16 = load %struct.directory_entry*, %struct.directory_entry** %15, align 8
  %17 = icmp ne %struct.directory_entry* %16, null
  br i1 %17, label %18, label %110

18:                                               ; preds = %13
  %19 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %20 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %19, i32 0, i32 1
  %21 = load %struct.directory_entry*, %struct.directory_entry** %20, align 8
  store %struct.directory_entry* %21, %struct.directory_entry** %2, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @reloc_dir, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.directory*, %struct.directory** %23, align 8
  store %struct.directory* %24, %struct.directory** %4, align 8
  %25 = load %struct.directory_entry*, %struct.directory_entry** %2, align 8
  %26 = getelementptr inbounds %struct.directory_entry, %struct.directory_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @INHIBIT_ISO9660_ENTRY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %111

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %43, %32
  %34 = load %struct.directory*, %struct.directory** %4, align 8
  %35 = icmp ne %struct.directory* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load %struct.directory*, %struct.directory** %4, align 8
  %38 = getelementptr inbounds %struct.directory, %struct.directory* %37, i32 0, i32 3
  %39 = load %struct.directory_entry*, %struct.directory_entry** %38, align 8
  %40 = load %struct.directory_entry*, %struct.directory_entry** %2, align 8
  %41 = icmp eq %struct.directory_entry* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %47

43:                                               ; preds = %36
  %44 = load %struct.directory*, %struct.directory** %4, align 8
  %45 = getelementptr inbounds %struct.directory, %struct.directory* %44, i32 0, i32 2
  %46 = load %struct.directory*, %struct.directory** %45, align 8
  store %struct.directory* %46, %struct.directory** %4, align 8
  br label %33

47:                                               ; preds = %42, %33
  %48 = load %struct.directory*, %struct.directory** %4, align 8
  %49 = icmp ne %struct.directory* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @EX_BAD, align 4
  %52 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %53 = call i32 @comerrno(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.directory_entry*, %struct.directory_entry** %2, align 8
  %56 = getelementptr inbounds %struct.directory_entry, %struct.directory_entry* %55, i32 0, i32 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %109

59:                                               ; preds = %54
  %60 = load %struct.directory_entry*, %struct.directory_entry** %2, align 8
  %61 = getelementptr inbounds %struct.directory_entry, %struct.directory_entry* %60, i32 0, i32 3
  %62 = load %struct.directory_entry*, %struct.directory_entry** %61, align 8
  %63 = icmp ne %struct.directory_entry* %62, null
  br i1 %63, label %64, label %109

64:                                               ; preds = %59
  %65 = load %struct.directory*, %struct.directory** %4, align 8
  %66 = getelementptr inbounds %struct.directory, %struct.directory* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.directory_entry*, %struct.directory_entry** %68, align 8
  store %struct.directory_entry* %69, %struct.directory_entry** %3, align 8
  %70 = load %struct.directory_entry*, %struct.directory_entry** %3, align 8
  %71 = getelementptr inbounds %struct.directory_entry, %struct.directory_entry* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.directory_entry*, %struct.directory_entry** %3, align 8
  %74 = getelementptr inbounds %struct.directory_entry, %struct.directory_entry* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @find_rr_attribute(i32 %72, i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %64
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = load %struct.directory_entry*, %struct.directory_entry** %2, align 8
  %83 = getelementptr inbounds %struct.directory_entry, %struct.directory_entry* %82, i32 0, i32 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @set_733(i8* %81, i32 %86)
  br label %88

88:                                               ; preds = %79, %64
  %89 = load %struct.directory_entry*, %struct.directory_entry** %2, align 8
  %90 = getelementptr inbounds %struct.directory_entry, %struct.directory_entry* %89, i32 0, i32 3
  %91 = load %struct.directory_entry*, %struct.directory_entry** %90, align 8
  store %struct.directory_entry* %91, %struct.directory_entry** %3, align 8
  %92 = load %struct.directory_entry*, %struct.directory_entry** %3, align 8
  %93 = getelementptr inbounds %struct.directory_entry, %struct.directory_entry* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.directory_entry*, %struct.directory_entry** %3, align 8
  %96 = getelementptr inbounds %struct.directory_entry, %struct.directory_entry* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @find_rr_attribute(i32 %94, i32 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %98, i8** %5, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %88
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  %104 = load %struct.directory*, %struct.directory** %4, align 8
  %105 = getelementptr inbounds %struct.directory, %struct.directory* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @set_733(i8* %103, i32 %106)
  br label %108

108:                                              ; preds = %101, %88
  br label %109

109:                                              ; preds = %108, %59, %54
  br label %110

110:                                              ; preds = %109, %13
  br label %111

111:                                              ; preds = %110, %31
  %112 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %113 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %112, i32 0, i32 0
  %114 = load %struct.dir_extent_link*, %struct.dir_extent_link** %113, align 8
  store %struct.dir_extent_link* %114, %struct.dir_extent_link** %1, align 8
  br label %10

115:                                              ; preds = %10
  %116 = load %struct.dir_extent_link*, %struct.dir_extent_link** @re_dirs, align 8
  store %struct.dir_extent_link* %116, %struct.dir_extent_link** %1, align 8
  br label %117

117:                                              ; preds = %120, %115
  %118 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %119 = icmp ne %struct.dir_extent_link* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %122 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %121, i32 0, i32 0
  %123 = load %struct.dir_extent_link*, %struct.dir_extent_link** %122, align 8
  store %struct.dir_extent_link* %123, %struct.dir_extent_link** %6, align 8
  %124 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %125 = call i32 @free(%struct.dir_extent_link* %124)
  %126 = load %struct.dir_extent_link*, %struct.dir_extent_link** %6, align 8
  store %struct.dir_extent_link* %126, %struct.dir_extent_link** %1, align 8
  br label %117

127:                                              ; preds = %117
  %128 = load %struct.dir_extent_link*, %struct.dir_extent_link** @cl_dirs, align 8
  store %struct.dir_extent_link* %128, %struct.dir_extent_link** %1, align 8
  br label %129

129:                                              ; preds = %132, %127
  %130 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %131 = icmp ne %struct.dir_extent_link* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %134 = getelementptr inbounds %struct.dir_extent_link, %struct.dir_extent_link* %133, i32 0, i32 0
  %135 = load %struct.dir_extent_link*, %struct.dir_extent_link** %134, align 8
  store %struct.dir_extent_link* %135, %struct.dir_extent_link** %7, align 8
  %136 = load %struct.dir_extent_link*, %struct.dir_extent_link** %1, align 8
  %137 = call i32 @free(%struct.dir_extent_link* %136)
  %138 = load %struct.dir_extent_link*, %struct.dir_extent_link** %7, align 8
  store %struct.dir_extent_link* %138, %struct.dir_extent_link** %1, align 8
  br label %129

139:                                              ; preds = %129
  ret void
}

declare dso_local i32 @comerrno(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @find_rr_attribute(i32, i32, i8*) #1

declare dso_local i32 @set_733(i8*, i32) #1

declare dso_local i32 @free(%struct.dir_extent_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
