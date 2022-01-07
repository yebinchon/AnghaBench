; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_write_xattrs_to_buffer.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_write_xattrs_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_xattr = type { i8*, i32, i8*, i64 }
%struct.ext2_ext_attr_entry = type { i32, i32, i32, i32, i64, i64 }

@EXT2_EXT_ATTR_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.ext2_xattr*, i32, i8*, i32, i32, i32)* @write_xattrs_to_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_xattrs_to_buffer(i32 %0, %struct.ext2_xattr* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext2_xattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ext2_xattr*, align 8
  %17 = alloca %struct.ext2_ext_attr_entry*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct.ext2_xattr* %1, %struct.ext2_xattr** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = bitcast i8* %24 to %struct.ext2_ext_attr_entry*
  store %struct.ext2_ext_attr_entry* %25, %struct.ext2_ext_attr_entry** %17, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8* %29, i8** %18, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @memset(i8* %30, i32 0, i32 %31)
  %33 = load %struct.ext2_xattr*, %struct.ext2_xattr** %10, align 8
  store %struct.ext2_xattr* %33, %struct.ext2_xattr** %16, align 8
  br label %34

34:                                               ; preds = %158, %7
  %35 = load %struct.ext2_xattr*, %struct.ext2_xattr** %16, align 8
  %36 = load %struct.ext2_xattr*, %struct.ext2_xattr** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %36, i64 %38
  %40 = icmp ult %struct.ext2_xattr* %35, %39
  br i1 %40, label %41, label %161

41:                                               ; preds = %34
  %42 = load %struct.ext2_xattr*, %struct.ext2_xattr** %16, align 8
  %43 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %19, align 8
  %45 = load %struct.ext2_xattr*, %struct.ext2_xattr** %16, align 8
  %46 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @find_ea_index(i8* %47, i8** %19, i32* %21)
  store i32 %48, i32* %22, align 4
  %49 = load %struct.ext2_xattr*, %struct.ext2_xattr** %16, align 8
  %50 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @EXT2_EXT_ATTR_PAD, align 4
  %53 = add nsw i32 %51, %52
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* @EXT2_EXT_ATTR_PAD, align 4
  %56 = sdiv i32 %54, %55
  %57 = load i32, i32* @EXT2_EXT_ATTR_PAD, align 4
  %58 = mul nsw i32 %56, %57
  store i32 %58, i32* %20, align 4
  %59 = load i8*, i8** %19, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %62 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %22, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %41
  %66 = load i32, i32* %21, align 4
  br label %68

67:                                               ; preds = %41
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %71 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ext2_xattr*, %struct.ext2_xattr** %16, align 8
  %73 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %76 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ext2_xattr*, %struct.ext2_xattr** %16, align 8
  %78 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %81 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  %82 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %83 = bitcast %struct.ext2_ext_attr_entry* %82 to i8*
  %84 = getelementptr inbounds i8, i8* %83, i64 32
  %85 = load i8*, i8** %19, align 8
  %86 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %87 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @memcpy(i8* %84, i8* %85, i32 %88)
  %90 = load %struct.ext2_xattr*, %struct.ext2_xattr** %16, align 8
  %91 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %68
  %95 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %96 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %95, i32 0, i32 3
  store i32 0, i32* %96, align 4
  br label %122

97:                                               ; preds = %68
  %98 = load i32, i32* %20, align 4
  %99 = load i8*, i8** %18, align 8
  %100 = zext i32 %98 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8* %102, i8** %18, align 8
  %103 = load i8*, i8** %18, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = load i32, i32* %14, align 4
  %109 = zext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = trunc i64 %110 to i32
  %112 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %113 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load i8*, i8** %18, align 8
  %115 = load %struct.ext2_xattr*, %struct.ext2_xattr** %16, align 8
  %116 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %119 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @memcpy(i8* %114, i8* %117, i32 %120)
  br label %122

122:                                              ; preds = %97, %94
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = load %struct.ext2_xattr*, %struct.ext2_xattr** %16, align 8
  %127 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %125, %122
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %133 = load %struct.ext2_xattr*, %struct.ext2_xattr** %16, align 8
  %134 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %140

138:                                              ; preds = %130
  %139 = load i8*, i8** %18, align 8
  br label %140

140:                                              ; preds = %138, %137
  %141 = phi i8* [ null, %137 ], [ %139, %138 ]
  %142 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %143 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %142, i32 0, i32 4
  %144 = call i64 @ext2fs_ext_attr_hash_entry2(i32 %131, %struct.ext2_ext_attr_entry* %132, i8* %141, i64* %143)
  store i64 %144, i64* %23, align 8
  %145 = load i64, i64* %23, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load i64, i64* %23, align 8
  store i64 %148, i64* %8, align 8
  br label %162

149:                                              ; preds = %140
  br label %153

150:                                              ; preds = %125
  %151 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %152 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %151, i32 0, i32 4
  store i64 0, i64* %152, align 8
  br label %153

153:                                              ; preds = %150, %149
  %154 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %155 = call %struct.ext2_ext_attr_entry* @EXT2_EXT_ATTR_NEXT(%struct.ext2_ext_attr_entry* %154)
  store %struct.ext2_ext_attr_entry* %155, %struct.ext2_ext_attr_entry** %17, align 8
  %156 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %17, align 8
  %157 = bitcast %struct.ext2_ext_attr_entry* %156 to i64*
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %153
  %159 = load %struct.ext2_xattr*, %struct.ext2_xattr** %16, align 8
  %160 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %159, i32 1
  store %struct.ext2_xattr* %160, %struct.ext2_xattr** %16, align 8
  br label %34

161:                                              ; preds = %34
  store i64 0, i64* %8, align 8
  br label %162

162:                                              ; preds = %161, %147
  %163 = load i64, i64* %8, align 8
  ret i64 %163
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @find_ea_index(i8*, i8**, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @ext2fs_ext_attr_hash_entry2(i32, %struct.ext2_ext_attr_entry*, i8*, i64*) #1

declare dso_local %struct.ext2_ext_attr_entry* @EXT2_EXT_ATTR_NEXT(%struct.ext2_ext_attr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
