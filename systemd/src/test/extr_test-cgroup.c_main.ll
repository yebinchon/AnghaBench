; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSTEMD_CGROUP_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/test-a\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/test-b\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"/test-b/test-c\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"/test-b/test-d\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"/sys/fs/cgroup/systemd/test-b/test-d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"foobar:/\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"foobar:\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"foobar:asdfd\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c":///\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"fo/obar:/\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %10 = call i64 @cg_create(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %15 = call i64 @cg_create(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %20 = call i64 @cg_create(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %25 = call i64 @cg_create(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %30 = call i64 @cg_create_and_attach(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert_se(i32 %32)
  %34 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %35 = call i32 (...) @getpid_cached()
  %36 = call i64 @cg_pid_get_path(i32 %34, i32 %35, i8** %6)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert_se(i32 %38)
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @streq(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @assert_se(i32 %41)
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %46 = call i64 @cg_attach(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert_se(i32 %48)
  %50 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %51 = call i32 (...) @getpid_cached()
  %52 = call i64 @cg_pid_get_path(i32 %50, i32 %51, i8** %6)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert_se(i32 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @path_equal(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 @assert_se(i32 %57)
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %62 = call i64 @cg_create_and_attach(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert_se(i32 %64)
  %66 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %67 = call i32 (...) @getpid_cached()
  %68 = call i64 @cg_pid_get_path(i32 %66, i32 %67, i8** %6)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert_se(i32 %70)
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @path_equal(i8* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %74 = call i32 @assert_se(i32 %73)
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %78 = call i64 @cg_get_path(i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* null, i8** %6)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert_se(i32 %80)
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @path_equal(i8* %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %84 = call i32 @assert_se(i32 %83)
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %88 = call i64 @cg_is_empty(i32 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %89 = icmp sgt i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert_se(i32 %90)
  %92 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %93 = call i64 @cg_is_empty(i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp sgt i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert_se(i32 %95)
  %97 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %98 = call i64 @cg_is_empty_recursive(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %99 = icmp sgt i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert_se(i32 %100)
  %102 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %103 = call i64 @cg_is_empty_recursive(i32 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert_se(i32 %105)
  %107 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %108 = call i64 @cg_kill_recursive(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32* null, i32* null, i32* null)
  %109 = icmp eq i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert_se(i32 %110)
  %112 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %113 = call i64 @cg_kill_recursive(i32 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32* null, i32* null, i32* null)
  %114 = icmp sgt i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert_se(i32 %115)
  %117 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %118 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %119 = call i64 @cg_migrate_recursive(i32 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %120 = icmp sgt i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert_se(i32 %121)
  %123 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %124 = call i64 @cg_is_empty_recursive(i32 %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert_se(i32 %126)
  %128 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %129 = call i64 @cg_is_empty_recursive(i32 %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %130 = icmp sgt i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert_se(i32 %131)
  %133 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %134 = call i64 @cg_kill_recursive(i32 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32* null, i32* null, i32* null)
  %135 = icmp sgt i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert_se(i32 %136)
  %138 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %139 = call i64 @cg_kill_recursive(i32 %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32* null, i32* null, i32* null)
  %140 = icmp eq i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert_se(i32 %141)
  %143 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %144 = call i32 @cg_trim(i32 %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %145 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %146 = call i64 @cg_rmdir(i32 %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %147 = icmp slt i64 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert_se(i32 %148)
  %150 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %151 = call i64 @cg_rmdir(i32 %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %152 = icmp sge i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert_se(i32 %153)
  %155 = call i64 @cg_split_spec(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %7, i8** %8)
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert_se(i32 %157)
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 @streq(i8* %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %161 = call i32 @assert_se(i32 %160)
  %162 = load i8*, i8** %8, align 8
  %163 = call i32 @streq(i8* %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %164 = call i32 @assert_se(i32 %163)
  %165 = load i8*, i8** %7, align 8
  %166 = call i32 @free(i8* %165)
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 @free(i8* %167)
  %169 = call i64 @cg_split_spec(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %7, i8** %8)
  %170 = icmp slt i64 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert_se(i32 %171)
  %173 = call i64 @cg_split_spec(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %7, i8** %8)
  %174 = icmp slt i64 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert_se(i32 %175)
  %177 = call i64 @cg_split_spec(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %7, i8** %8)
  %178 = icmp slt i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert_se(i32 %179)
  %181 = call i64 @cg_split_spec(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %7, i8** %8)
  %182 = icmp slt i64 %181, 0
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert_se(i32 %183)
  %185 = call i64 @cg_split_spec(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8** %7, i8** %8)
  %186 = icmp slt i64 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert_se(i32 %187)
  %189 = call i64 @cg_split_spec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %7, i8** %8)
  %190 = icmp slt i64 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert_se(i32 %191)
  %193 = call i64 @cg_split_spec(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %7, i8** %8)
  %194 = icmp sge i64 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert_se(i32 %195)
  %197 = load i8*, i8** %7, align 8
  %198 = icmp eq i8* %197, null
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert_se(i32 %199)
  %201 = load i8*, i8** %8, align 8
  %202 = call i32 @streq(i8* %201, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %203 = call i32 @assert_se(i32 %202)
  %204 = load i8*, i8** %8, align 8
  %205 = call i32 @free(i8* %204)
  %206 = call i64 @cg_split_spec(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %7, i8** %8)
  %207 = icmp sge i64 %206, 0
  %208 = zext i1 %207 to i32
  %209 = call i32 @assert_se(i32 %208)
  %210 = load i8*, i8** %7, align 8
  %211 = call i32 @streq(i8* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %212 = call i32 @assert_se(i32 %211)
  %213 = load i8*, i8** %8, align 8
  %214 = icmp eq i8* %213, null
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert_se(i32 %215)
  %217 = load i8*, i8** %7, align 8
  %218 = call i32 @free(i8* %217)
  ret i32 0
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @cg_create(i32, i8*) #1

declare dso_local i64 @cg_create_and_attach(i32, i8*, i32) #1

declare dso_local i64 @cg_pid_get_path(i32, i32, i8**) #1

declare dso_local i32 @getpid_cached(...) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @cg_attach(i32, i8*, i32) #1

declare dso_local i32 @path_equal(i8*, i8*) #1

declare dso_local i64 @cg_get_path(i32, i8*, i32*, i8**) #1

declare dso_local i64 @cg_is_empty(i32, i8*) #1

declare dso_local i64 @cg_is_empty_recursive(i32, i8*) #1

declare dso_local i64 @cg_kill_recursive(i32, i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @cg_migrate_recursive(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @cg_trim(i32, i8*, i32) #1

declare dso_local i64 @cg_rmdir(i32, i8*) #1

declare dso_local i64 @cg_split_spec(i8*, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
