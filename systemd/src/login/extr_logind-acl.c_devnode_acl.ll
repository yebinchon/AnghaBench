; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-acl.c_devnode_acl.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-acl.c_devnode_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ACL_USER = common dso_local global i32 0, align 4
@ACL_READ = common dso_local global i32 0, align 4
@ACL_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devnode_acl(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @assert(i8* %22)
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %26 = call i32 @acl_get_file(i8* %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @errno, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %175

32:                                               ; preds = %6
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @flush_acl(i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %171

41:                                               ; preds = %35
  %42 = load i32, i32* %15, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %16, align 4
  br label %45

45:                                               ; preds = %44, %41
  br label %73

46:                                               ; preds = %32
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @acl_find_uid(i32 %53, i32 %54, i32* %17)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %171

59:                                               ; preds = %52
  %60 = load i32, i32* %15, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i64 @acl_delete_entry(i32 %63, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @errno, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %15, align 4
  br label %171

70:                                               ; preds = %62
  store i32 1, i32* %16, align 4
  br label %71

71:                                               ; preds = %70, %59
  br label %72

72:                                               ; preds = %71, %49, %46
  br label %73

73:                                               ; preds = %72, %45
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %151

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %151

79:                                               ; preds = %76
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @acl_find_uid(i32 %80, i32 %81, i32* %18)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %171

86:                                               ; preds = %79
  %87 = load i32, i32* %15, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  %90 = call i64 @acl_create_entry(i32* %14, i32* %18)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @errno, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %15, align 4
  br label %171

95:                                               ; preds = %89
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* @ACL_USER, align 4
  %98 = call i64 @acl_set_tag_type(i32 %96, i32 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %18, align 4
  %102 = call i64 @acl_set_qualifier(i32 %101, i32* %13)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100, %95
  %105 = load i32, i32* @errno, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %15, align 4
  br label %171

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %86
  %109 = load i32, i32* %18, align 4
  %110 = call i64 @acl_get_permset(i32 %109, i32* %19)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @errno, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %15, align 4
  br label %171

115:                                              ; preds = %108
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* @ACL_READ, align 4
  %118 = call i32 @acl_get_perm(i32 %116, i32 %117)
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, i32* @errno, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %15, align 4
  br label %171

124:                                              ; preds = %115
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* @ACL_WRITE, align 4
  %127 = call i32 @acl_get_perm(i32 %125, i32 %126)
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %21, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i32, i32* @errno, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %15, align 4
  br label %171

133:                                              ; preds = %124
  %134 = load i32, i32* %20, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* %21, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* @ACL_READ, align 4
  %142 = load i32, i32* @ACL_WRITE, align 4
  %143 = or i32 %141, %142
  %144 = call i64 @acl_add_perm(i32 %140, i32 %143)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load i32, i32* @errno, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %15, align 4
  br label %171

149:                                              ; preds = %139
  store i32 1, i32* %16, align 4
  br label %150

150:                                              ; preds = %149, %136
  br label %151

151:                                              ; preds = %150, %76, %73
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  br label %171

155:                                              ; preds = %151
  %156 = call i64 @acl_calc_mask(i32* %14)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* @errno, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %15, align 4
  br label %171

161:                                              ; preds = %155
  %162 = load i8*, i8** %8, align 8
  %163 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %164 = load i32, i32* %14, align 4
  %165 = call i64 @acl_set_file(i8* %162, i32 %163, i32 %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load i32, i32* @errno, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %15, align 4
  br label %171

170:                                              ; preds = %161
  store i32 0, i32* %15, align 4
  br label %171

171:                                              ; preds = %170, %167, %158, %154, %146, %130, %121, %112, %104, %92, %85, %67, %58, %40
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @acl_free(i32 %172)
  %174 = load i32, i32* %15, align 4
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %171, %29
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @acl_get_file(i8*, i32) #1

declare dso_local i32 @flush_acl(i32) #1

declare dso_local i32 @acl_find_uid(i32, i32, i32*) #1

declare dso_local i64 @acl_delete_entry(i32, i32) #1

declare dso_local i64 @acl_create_entry(i32*, i32*) #1

declare dso_local i64 @acl_set_tag_type(i32, i32) #1

declare dso_local i64 @acl_set_qualifier(i32, i32*) #1

declare dso_local i64 @acl_get_permset(i32, i32*) #1

declare dso_local i32 @acl_get_perm(i32, i32) #1

declare dso_local i64 @acl_add_perm(i32, i32) #1

declare dso_local i64 @acl_calc_mask(i32*) #1

declare dso_local i64 @acl_set_file(i8*, i32, i32) #1

declare dso_local i32 @acl_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
